# frozen_string_literal: true

ruby '2.4.2'
source 'https://rubygems.org'

gem 'activerecord', require: 'active_record'
gem 'configatron'
gem 'grape'
gem 'jsonapi-serializers'
gem 'mysql2'
gem 'otr-activerecord'
gem 'puma'
gem 'rack'
gem 'rake'
gem 'rubocop', require: false
gem 'simplecov', require: false, group: :test

group :development do
  gem 'pry'
  gem 'pry-remote'
end

group :test do
  gem 'database_cleaner'
  gem 'rack-test', require: 'rack/test'
end
