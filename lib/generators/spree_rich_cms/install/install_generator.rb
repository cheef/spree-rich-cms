module SpreeRichCMS
  module Generators
    class InstallGenerator < Rails::Generators::Base
      namespace 'spree_rich_cms:install'

      def add_migrations
        say_status :copying, "migrations"
        #quietly { rake 'railties:install:migrations FROM=spree-rich-cms' }
        #rake 'railties:install:migrations FROM=spree-rich-cms'
        run 'rake railties:install:migrations FROM=spree-rich-cms'
      end

      def run_migrations
        if yes? "Run migrations now?"
          say_status :running, "migrations"
          quietly { rake 'db:migrate' }
        else
          say_status :skipping, "migrations (don't forget to run rake db:migrate)"
        end
      end
    end
  end
end