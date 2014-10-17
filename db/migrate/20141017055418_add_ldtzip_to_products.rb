class AddLdtzipToProducts < ActiveRecord::Migration
  def change
    add_column :products, :ldtzip, :string
  end
end
