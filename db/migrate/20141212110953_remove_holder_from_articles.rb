class RemoveHolderFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :holder, :string
  end
end
