# vagrant_ruby_on_rails

## 下準備
1. vagrantとvertualBoxのインストール
2. gitのインストールとアカウントの追加

## how to
#### 仮想環境の作成
1. `git clone https://github.com/admjgptw1357/vagrant_ruby_on_rails`
2. `cd vagrant_ruby_on_rails`
3. `vagrant up`
4. `vagrant ssh`

これで、rubyなどの環境がセットアップされている仮想環境にアクセスできるように

停めるときは、`vagrant halt`で


#### herokuを使う
herokuでアカウントを作成。

1. `heroku login`

#### Railsアプリケーション作成
**HerokuApp**というアプリケーションを作ることを前提として作成。また、サンプル用にpost用のサーバーを作成
1. `cd /vagrant`したあとに、`mkdir アプリケーションディレクトリ`
2. `rails new HerokuApp`
3. `cd HerokuApp`
4. `rails generate scaffold post title:string body:string`
5. `bundle exec rake db:migrate`
6. `rails s`

でhttp://localhost:3000/posts でアクセスできるかどうかテスト。

#### デプロイ用のファイル修正
1. `Gemfile`を下記のように修正

```
gem `sqlite3`, group: :development
gem `pg`, group: :production
```

2. `bundle install`

3. `config/database.yml`の`production`の項目を下記のように修正
```
production:
  &lt;&lt;: *default
  adapter: postgresql
  encoding: unicode
  pool: 5
```

#### herokuへのデプロイとgit
gitのアカウントを持っていない人は新しく作る。

1. `heroku create サーバー名`でサーバーを作る（長くしないと被るので適当に長い文字列で）
2. `git init`
3. `git heroku git:remote -a サーバー名`
4. `git add .`
5. `git commit -m "initial commit"`
6. `git push heroku master`
7. `heroku run:detached rake db:migrat`

ここでこけるのであれば、`bin`以下の全てのファイルの先頭行を`#!/usr/bin/env ruby2.4`から`#!/usr/bin/env ruby`にすると動くかも

http://サーバー名.herokuapp.com/posts にアクセスしてpostできるか確認。

