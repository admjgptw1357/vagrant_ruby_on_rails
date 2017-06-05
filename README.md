# vagrant_ruby_on_rails

## 下準備
1. vagrantとvertualBoxのインストール
2. gitのインストールとアカウントの追加

## how to
#### 仮想環境の作成
1. 'git clone https://github.com/admjgptw1357/vagrant_ruby_on_rails'
2. 'cd vagrant_ruby_on_rails'
3. 'vagrant up'
4. 'vagrant ssh'

これで、rubyなどの環境がセットアップされている仮想環境にアクセスできるように

停めるときは、'vagrant halt'で


#### herokuを使う
herokuでアカウントを作成。

1. 'heroku login'

#### Railsアプリケーション作成
**HerokuApp**というアプリケーションを作ることを前提として作成。
1. 'rails new HerokuApp'
2. 'cd HerokuApp'
3. 'rails generate scaffold post title:string body:string'
4. 'bundle exec rake db:migrate'
5. 'rails s'

でhttp://localhost:3000/posts でアクセスできるかどうかテスト。

#### デプロイ用のファイル修正
'Gemfile'を下記のように修正

```
gem 'sqlite3', group: :development
gem 'pg', group: :production
```




