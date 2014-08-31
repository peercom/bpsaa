class AddEfficiencyToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :efficiency, :string
  end
end
