class AddLdtToProducts < ActiveRecord::Migration
  def change
    add_column :products, :ldt, :string
  end
end
