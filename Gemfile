source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.6'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 5.0'

gem 'turbolinks', '~> 5'

gem 'spring-commands-rspec'

gem 'faker'

gem 'launchy'

gem 'jbuilder', '~> 2.7'

gem 'pry-rails'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
  gem 'rexml'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
  # gem 'webdrivers', require: !ENV['SELENIUM_REMOTE_URL']
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
