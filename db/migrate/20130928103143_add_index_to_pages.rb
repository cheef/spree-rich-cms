class AddIndexToPages < ActiveRecord::Migration
  def change
    add_index :spree_pages, :slug, unique: true
  end
end
