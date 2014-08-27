class AddUgrToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :ugr, :integer
    add_column :articles, :ugr1, :integer
  end
end
