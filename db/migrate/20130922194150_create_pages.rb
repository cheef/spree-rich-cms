class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :url
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
