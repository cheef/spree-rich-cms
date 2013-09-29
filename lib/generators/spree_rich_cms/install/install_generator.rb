module SpreeRichCMS
  module Generators
    class InstallGenerator < Rails::Generators::Base
      namespace 'spree_rich_cms:install'

      def add_javascripts
        append_file "app/assets/javascripts/admin/all.js", "//= require admin/spree_rich_cms"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/admin/all.css", " *= require admin/spree_rich_cms\n",
                         before:  /\*\//,
                         verbose: true
      end

      def add_migrations
        say_status :copying, "migrations"
        quietly { run 'rake railties:install:migrations FROM=spree_rich_cms' }
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