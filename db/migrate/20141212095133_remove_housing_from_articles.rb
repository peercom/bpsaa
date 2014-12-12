class RemoveHousingFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :housing, :string
  end
end
