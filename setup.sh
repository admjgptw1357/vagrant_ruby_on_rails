sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt update
sudo apt -y install nodejs libcurl4-openssl-dev apache2-dev libapr1-dev libaprutil1-dev libxml2 libxslt-dev build-essential patch libssl-dev
sudo apt -y install sqlite3 libsqlite3-dev
sudo apt -y install ruby2.4 ruby2.4-dev
sudo apt -y install postgresql libpq-dev

gem install actionmailer --version 4.2.6
gem install actionpack --version 4.2.6
gem install actionview --version 4.2.6
gem install activejob --version 4.2.6
gem install activemodel --version 4.2.6
gem install activerecord --version 4.2.6
gem install activerecord-deprecated_finders --version 1.0.4
gem install activerecord-postgresql-adapter --version 0.0.1
gem install activesupport --version 4.2.6
gem install addressable --version 2.4.0
gem install arel --version 6.0.3
gem install bcrypt --version 3.1.11
gem install bcrypt-ruby --version 3.1.5, 3.1.2
gem install bigdecimal --version 1.2.6
gem install binding_of_caller --version 0.7.2
gem install bootstrap-sass --version 3.2.0.0
gem install bootstrap-will_paginate --version 0.0.10
gem install builder --version 3.2.2
gem install bundler --version 1.12.5
gem install byebug --version 9.0.5
gem install coffee-rails --version 4.1.1
gem install coffee-script --version 2.4.1
gem install coffee-script-source --version 1.10.0
gem install concurrent-ruby --version 1.0.2
gem install debug_inspector --version 0.0.2
gem install erubis --version 2.7.0
gem install excon --version 0.49.0
gem install execjs --version 2.7.0
gem install faker --version 1.4.2
gem install globalid --version 0.3.6
gem install heroku --version 3.43.3
gem install heroku-api --version 0.4.2
gem install hike --version 1.2.3
gem install i18n --version 0.7.0
gem install io-console
gem install jbuilder --version 2.5.0
gem install jquery-rails --version 3.1.4
gem install json
gem install launchy --version 2.4.3
gem install loofah --version 2.0.3
gem install mail --version 2.6.4
gem install mime-types --version 3.1
gem install mime-types-data --version 3.2016.0521
gem install mini_portile2 --version 2.1.0
gem install minitest --version 5.9.0
gem install multi_json --version 1.12.1
gem install net-ssh --version 2.9.2
gem install net-ssh-gateway --version 1.2.0
gem install netrc --version 0.10.3
gem install nokogiri --version 1.6.8
gem install pg --version 0.18.4
gem install pkg-config --version 1.1.7
gem install polyamorous --version 1.3.1
gem install polyglot --version 0.3.5
gem install power_assert --version 0.2.2
gem install psych --version 2.0.8
gem install puma --version 3.4.0
gem install rack --version 1.6.4
gem install rack-test --version 0.6.3
gem install rails --version 4.0.0
gem install rails-deprecated_sanitizer --version 1.0.3
gem install rails-dom-testing --version 1.0.7
gem install rails-html-sanitizer --version 1.0.3
gem install rails_12factor --version 0.0.3
gem install rails_serve_static_assets --version 0.0.5
gem install rails_stdout_logging --version 0.0.5
gem install railties --version 4.2.6
gem install rake --version 11.2.2, 11.1.2
gem install ransack --version 1.7.0
gem install rdoc --version 4.2.2
gem install rest-client --version 1.6.8
gem install rubyzip --version 1.1.7
gem install sass --version 3.4.22
gem install sass-rails --version 5.0.4
gem install sdoc --version 0.4.1
gem install spring --version 1.7.1
gem install sprockets --version 3.6.0
gem install sprockets-rails --version 3.0.4
gem install sqlite3 --version 1.3.11
gem install test-unit --version 3.0.8
gem install thor --version 0.19.1
gem install thread_safe --version 0.3.5
gem install tilt --version 2.0.5
gem install treetop --version 1.4.15
gem install turbolinks --version 5.0.0
gem install turbolinks-source --version 5.0.0
gem install tzinfo --version 1.2.2, 0.3.51
gem install uglifier --version 3.0.0
gem install web-console --version 2.3.0
gem install will_paginate --version 3.0.7

sudo apt-get install software-properties-common
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -fL https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku


