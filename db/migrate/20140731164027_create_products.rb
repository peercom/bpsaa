class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :system_id
      t.string :image
      t.string :assembly_instruction
      t.string :sectional_view

      t.timestamps
    end
  end
end
