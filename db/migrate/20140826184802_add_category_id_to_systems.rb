class AddCategoryIdToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :category_id, :integer
  end
end
