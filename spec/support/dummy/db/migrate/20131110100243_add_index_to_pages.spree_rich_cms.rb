# This migration comes from spree_rich_cms (originally 20130928103143)
class AddIndexToPages < ActiveRecord::Migration
  def change
    add_index :spree_pages, :slug, unique: true
  end
end
