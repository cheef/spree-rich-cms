require 'coveralls'
Coveralls.wear_merged!
require 'simplecov'

require File.expand_path("../../../spec/dummy/config/environment", __FILE__)
require 'database_cleaner'
require 'capybara/cucumber'
require 'capybara-webkit'
require 'spree/testing_support/factories'
require 'cucumber/rspec/doubles'
require 'ffaker'

FactoryGirl.find_definitions
World(FactoryGirl::Syntax::Methods)

Capybara.app = Dummy::Application
World(Capybara::DSL)

DatabaseCleaner.strategy = :truncation

Capybara.configure do |config|
  config.javascript_driver = :webkit
end

Before do
  DatabaseCleaner.start
end

After do
  DatabaseCleaner.clean
end