require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new(:spec)
Cucumber::Rake::Task.new(:features)

desc "Prepare dummy application"
task :prepare do
  require File.expand_path("./spec/support/dummy/config/environment", File.dirname(__FILE__))
  Dummy::Application.load_tasks

  Rake::Task["db:test:prepare"].invoke
end

desc "Run all specs and features"
task :test => [:prepare, :spec, :features]
