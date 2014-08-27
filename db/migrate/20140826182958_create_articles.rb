class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.string :lamp
      t.integer :length
      t.integer :suspension_distance
      t.string :article_number
      t.string :eei
      t.string :type
      t.integer :degrees
      t.string :fitting
      t.string :systemtype
      t.string :housing
      t.string :ceiling_cutout
      t.integer :height
      t.integer :weight
      t.integer :opening
      t.integer :diameter
      t.string :led
      t.string :color
      t.integer :angle
      t.string :holder
      t.integer :space_required
      t.string :head
      t.string :dimensions
      t.string :light_temperature
      t.string :transformer
      t.string :panel_width
      t.string :panel_length
      t.string :format

      t.timestamps
    end
  end
end
