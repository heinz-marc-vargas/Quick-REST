source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'sqlite3'
gem 'jquery-rails'
gem "unicorn"
gem "test_xml"

group :test do
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "capybara", ">= 2.0.2"
  gem 'json_spec'
  gem 'json_expressions'
end

group :development do
  gem "better_errors", ">= 0.3.2"
end

group :development, :test do
  gem "rspec-rails", ">= 2.12.2"
  gem "factory_girl_rails", ">= 4.2.0"
end
