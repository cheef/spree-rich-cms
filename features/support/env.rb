require 'coveralls'
Coveralls.wear!

require File.expand_path("../../../spec/support/dummy/config/environment", __FILE__)
require 'database_cleaner'
require 'capybara/cucumber'
require 'spree/testing_support/factories'
require 'cucumber/rspec/doubles'

FactoryGirl.find_definitions
World(FactoryGirl::Syntax::Methods)

Capybara.app = Dummy::Application
World(Capybara::DSL)

DatabaseCleaner.strategy = :transaction

Capybara.configure do |config|
  config.javascript_driver = :webkit
end

Before do
  DatabaseCleaner.start
end

After do
  DatabaseCleaner.clean
end