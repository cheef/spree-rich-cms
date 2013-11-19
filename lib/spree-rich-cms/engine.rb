require 'friendly_id'
require 'carrierwave'
require 'ckeditor'
require 'spree'

module Spree
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_rich_cms'

    initializer 'assets.precompile' do |config|
      Rails.application.config.assets.precompile += ["ckeditor*"]
    end

    config.to_prepare do
      Dir.glob(Rails.root.join "app/decorators/**/*_decorator*.rb").each do |lib|
        require_dependency lib
      end
    end
  end
end

