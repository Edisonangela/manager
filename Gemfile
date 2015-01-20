#source 'https://rubygems.org'
source 'http://ruby.taobao.org/'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'devise'
gem 'nested_form'
gem 'responders',          github: 'plataformatec/responders'
gem 'inherited_resources', github: 'josevalim/inherited_resources'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

## 表单
gem 'simple_form', '~> 3.0.0'

gem 'aasm'

## 配置文件
gem 'rails_config'

## 错误邮件提醒
gem 'exception_notification', '~> 4.0.1'

# ActiveRecord enums with i18n
gem 'symbolize', '~> 4.4.1'

# Pagination
gem 'kaminari', '~> 0.15.0'

# ActsAsTaggableOn
gem 'acts-as-taggable-on', '~> 3.0.1'

# Upload files in your applications
gem 'carrierwave', '~> 0.9.0'
gem 'qiniu-rs', '~> 3.4.6'
gem 'carrierwave-qiniu', '~> 0.0.8'
gem 'mini_magick'

gem 'quiet_assets'


gem 'redactor-rails', github: 'jerryshen/redactor-rails'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'haml-rails', '~> 0.4'
gem 'rails-i18n', '~> 4.0.0' # For 4.0.x
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
gem 'actionpack-xml_parser'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'database_cleaner'
  gem 'annotate', '~> 2.5.0'
  gem 'capistrano'
  gem 'capistrano_colors'
  gem 'rvm-capistrano'

  gem 'switch_user'

  ## 邮件预览
  gem 'mail_view', '~> 2.0.1'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'foreman'

  gem 'better_errors'
  gem 'binding_of_caller', '~> 0.7.2'

  gem 'railroady'
  gem 'awesome_print'

  gem 'capistrano-db-tasks', require: false, github: 'gkopylov/capistrano-db-tasks', ref: 'f3949cd'

  gem 'spring'

  gem 'thin'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.14.0'
  gem "factory_girl_rails", "~> 4.3.0"
  gem 'ffaker', '~> 1.18.0'
end

group :test do
  gem 'guard-rspec'
  gem 'guard-livereload'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'
gem 'faraday'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', '~> 1.6.5', group: [:development, :test]
