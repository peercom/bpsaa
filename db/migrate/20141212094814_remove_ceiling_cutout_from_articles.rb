class RemoveCeilingCutoutFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :ceiling_cutout, :string
  end
end
