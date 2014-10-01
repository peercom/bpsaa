class AddLuminousFlowToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :luminous_flow, :integer
  end
end
