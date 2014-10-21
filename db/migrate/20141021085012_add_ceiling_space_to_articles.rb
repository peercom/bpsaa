class AddCeilingSpaceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :ceiling_space, :string
  end
end
