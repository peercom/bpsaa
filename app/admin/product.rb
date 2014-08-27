ActiveAdmin.register Product do

 
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :system_id, :image, :assembly_instruction, :sectional_view
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  index do
      column :name
      column :system
      column "Kategorie" do |product|
        product.system.category.name
      end
      actions
  end
  
  
  ActiveAdmin.register Product do
      menu :priority => 14
  end
  
end
