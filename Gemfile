# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.1'
gem 'bootsnap', require: false
gem 'pg'
gem 'puma', '>= 5.0'
gem 'rack-cors'
gem 'rails', '~> 7.1.3', '>= 7.1.3.3'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]

  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'simplecov', require: false
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
