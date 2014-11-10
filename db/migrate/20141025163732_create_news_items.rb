class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :content
      t.text :teaser
      t.datetime :publication_date
      t.boolean :featured
      t.string :image

      t.timestamps
    end
  end
end
