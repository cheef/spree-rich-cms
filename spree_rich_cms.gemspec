# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "spree_rich_cms"
  spec.version       = '0.0.6'
  spec.authors       = ["Ivan Garmatenko"]
  spec.email         = ["cheef.che@gmail.com"]
  spec.description   = %(Simple CMS with rich text editor integrated with Spree)
  spec.summary       = %(Simple CMS with rich text editor integrated with Spree)
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'spree', '>= 2'
  spec.add_runtime_dependency 'friendly_id', '>= 5.0.0.rc1'
  spec.add_runtime_dependency 'carrierwave'
  spec.add_runtime_dependency 'mini_magick'
  spec.add_runtime_dependency 'ckeditor'

  spec.add_development_dependency "rake"
end
