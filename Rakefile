require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new(:spec)
Cucumber::Rake::Task.new(:features)

desc "Run all specs and features"
task :test => [:spec, :features]
