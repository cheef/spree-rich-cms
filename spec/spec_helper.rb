require 'coveralls'
Coveralls.wear_merged!
require 'simplecov'

require File.expand_path("../dummy/config/environment", __FILE__)
require 'database_cleaner'
require 'factory_girl'
require 'ffaker'

DatabaseCleaner.strategy = :truncation
FactoryGirl.find_definitions

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before :each do
    DatabaseCleaner.start
  end

  config.after :each do
    DatabaseCleaner.clean
  end
end