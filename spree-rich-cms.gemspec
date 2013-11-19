# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = "spree-rich-cms"
  s.version       = '0.0.14'
  s.authors       = ["Ivan Garmatenko"]
  s.email         = %w(cheef.che@gmail.com)
  s.description   = %(Simple CMS with rich text editor integrated with Spree)
  s.summary       = %(Simple CMS with rich text editor integrated with Spree)
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = Dir.glob("{app,config,db,lib}/**/*") + %w(README.md LICENSE.txt)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_runtime_dependency 'spree', '>= 2'
  s.add_runtime_dependency 'friendly_id', '>= 5.0.1'
  s.add_runtime_dependency 'carrierwave'
  s.add_runtime_dependency 'mini_magick'
  s.add_runtime_dependency 'ckeditor'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'pickle'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '>= 4.3'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'pry'
end
