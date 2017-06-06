# vagrant_ruby_on_rails


## 趣旨
Ruby on Railsをherokuにデプロイすることは、多くの門外漢にとって難しいハードルがあります（バージョン違いで動かないことがある）。
皆さんのパソコンには既に開発環境が導入されており、これらの整合性をとることは高い障壁になり、この課題のためだけに環境を破壊することはあまり得策とは言えない状態です。

そこで、Mac上にUbuntuというOSを新しく建ててまっさらな環境で、あらかじめデプロイできることがわかっている組み合わせ等を配布することでこのような問題をなくそうとしています。
とはいえ、新しいOSでエディタとかを設定することはこれまた手間なことなので、仮想OSとディレクトリを共有し、そこにプロジェクトファイルを置くことで、いつものエディタで編集ができて、実行環境だけ仮想OSという状態にできます。

## 下準備
1. [vagrant](https://www.vagrantup.com/)と[virtualBox](https://www.virtualbox.org/wiki/Downloads)のインストール
2. [github](https://github.com)のアカウント作成と、gitのインストール（[こちら](https://git-scm.com/downloads)）

## how to
#### 仮想環境の作成
プロジェクトを作りたいディレクトリにあらかじめ移動（`cd`）しておいてください。
1. `git clone https://github.com/admjgptw1357/vagrant_ruby_on_rails`
2. `cd vagrant_ruby_on_rails`
3. `rm -irf .git`
4. `vagrant up`
5. `vagrant ssh`

これで、rubyなどの環境がセットアップされている仮想環境にアクセスできるように

停めるときは、`vagrant halt`で（詳しいvagrantのコマンドについては下記を参照のこと）


#### herokuを使う
herokuでアカウントを作成。

1. `heroku login`

#### Railsアプリケーション作成
**HerokuApp**というアプリケーションを作ることを前提として作成。また、サンプル用にpost用のサーバーを作成
このvagrantの設定上、このアプリケーションディレクトリは、cloneしたディレクトリと共有しているため、cloneしたディレクトリで編集することができる（好きなエディタで開ける）
1. `cd /vagrant`したあとに、`mkdir アプリケーションディレクトリ`そして、`cd アプリケーションディレクトリ`
2. `rails new HerokuApp`
3. `cd HerokuApp`
4. `cat "hoge" > public/index.html`
5. `bundle exec rake db:migrate`
6. `rails s`

でhttp://192.168.33.10:3000/ でアクセスできるかどうかテスト。

#### デプロイ用のファイル修正
1. `Gemfile`を下記のように修正

```
gem 'sqlite3', group: :development
gem 'pg', group: :production
```

2. `bundle install`

3. `config/database.yml`の`production`の項目を下記のように修正
```
production:
  <<: *default
  adapter: postgresql
  encoding: unicode
  pool: 5
```

4. `bin`以下の全てのファイルの先頭行を`#!/usr/bin/env ruby2.4`から`#!/usr/bin/env ruby`にする

#### herokuへのデプロイとgit
gitのアカウントを持っていない人は新しく作る。

1. `heroku create サーバー名`でサーバーを作る（長くしないと被るので適当に長い文字列で）
2. `git init`
3. `git add .`
4. `git commit -m "initial commit"`
5. `heroku git:remote -a サーバー名`
6. `git push heroku master`
7. `heroku run:detached rake db:migrat`


http://サーバー名.herokuapp.com/ にアクセスしてhogeが表示されているか確認。

## vagrant
vagrantとは仮想環境を手軽に構築するためのコマンドラインツール群です。

|説明|コマンド|
|:--:|:--:|
|仮想マシンの起動（プロジェクトのディレクトリに移動してから）|`vagrant up`|
|仮想マシンの停止|`vagrant halt`|
|仮想マシンの状態の確認|`vagrnt status`|
|仮想マシンへのシェルログイン|`vagrant ssh`|
|仮想マシンの削除|`vagrant remove <box_name>`|
