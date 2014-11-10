class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
