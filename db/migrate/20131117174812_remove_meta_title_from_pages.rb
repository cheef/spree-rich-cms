class RemoveMetaTitleFromPages < ActiveRecord::Migration
  def change
    remove_column :spree_pages, :meta_title
  end
end
