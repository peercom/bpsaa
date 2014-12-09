ActiveAdmin.register System do
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :image, :category_id
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  
  index do
    column :id
    column "Kategorie" do |system|
      system.category.name
    end
    column :name
    actions
  end
  
  filter :category, :as => :select
  filter :name
  
  ActiveAdmin.register System do
      menu :parent => "Produkte", :priority => 13
  end
  
end
