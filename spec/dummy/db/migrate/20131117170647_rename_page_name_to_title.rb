class RenamePageNameToTitle < ActiveRecord::Migration
  def change
    rename_column :spree_pages, :name, :title
  end
end
