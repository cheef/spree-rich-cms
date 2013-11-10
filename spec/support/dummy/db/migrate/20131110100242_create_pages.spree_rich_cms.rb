# This migration comes from spree_rich_cms (originally 20130922194150)
class CreatePages < ActiveRecord::Migration
  def change
    create_table :spree_pages do |t|
      t.string :name
      t.string :slug
      t.text :body
      t.string :meta_title
      t.string :meta_description
      t.string :meta_keywords
      t.integer :position
      t.datetime :published_at

      t.timestamps
    end
  end
end
