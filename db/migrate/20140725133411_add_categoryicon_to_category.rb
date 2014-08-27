class AddCategoryiconToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :category_icon, :string
  end
end
