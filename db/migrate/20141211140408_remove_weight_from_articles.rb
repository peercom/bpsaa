class RemoveWeightFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :weight, :integer
  end
end
