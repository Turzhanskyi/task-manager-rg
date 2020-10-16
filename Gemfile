# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'anycable-rails', '1.0.4'
gem 'bootsnap', '1.4.8', require: false
gem 'devise', '4.7.3'
gem 'jbuilder', '2.10.1'
gem 'pg', '1.2.3'
gem 'puma', '4.3.6'
gem 'rails', '6.0.3.4'
gem 'sass-rails', '6.0'
gem 'simple_form', '5.0.3'
gem 'slim', '4.1.0'
gem 'turbolinks', '5.2.1'
gem 'webpacker', '5.1.1'

group :development, :test do
  gem 'byebug', '11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '6.1.0'
  gem 'ffaker', '2.17.0'
  gem 'overcommit', '0.57.0'
  gem 'pronto', '0.10.0', require: false
  gem 'pronto-brakeman', '0.10.0', require: false
  gem 'pronto-fasterer', '0.10.0', require: false
  gem 'pronto-rails_best_practices', '0.10.0', require: false
  gem 'pronto-reek', '0.10.0', require: false
  gem 'pronto-rubocop', '0.10.0', require: false
  gem 'rails-controller-testing', '1.0.5'
  gem 'rspec-rails', '4.0.1'
  gem 'rubocop-performance', '1.8.1', require: false
  gem 'rubocop-rails', '2.8.1', require: false
  gem 'rubocop-rspec', '1.43.2', require: false
  gem 'shoulda-matchers', '4.4.1'
end

group :development do
  gem 'annotate', '3.1.1'
  gem 'listen', '3.2.1'
  gem 'spring', '2.1.1'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console', '4.0.4'
end

group :test do
  gem 'rspec_junit_formatter', '0.4.1'
  gem 'simplecov', '0.19.0', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
