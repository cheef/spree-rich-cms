require 'coveralls'
Coveralls.wear!

require File.expand_path("../support/dummy/config/environment", __FILE__)
require 'database_cleaner'

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