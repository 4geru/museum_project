# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem 'line-bot-api'
gem 'sinatra'
gem 'dotenv'

# databae
gem "activerecord", "< 5.0.0"
gem 'activesupport'
gem 'sinatra-activerecord'

gem 'rake'

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'pry'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'sqlite3'
end

group :production do
  gem 'pg', '0.15.1'
end