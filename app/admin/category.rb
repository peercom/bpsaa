ActiveAdmin.register Category do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :utf8, :_method, :authenticity_token, :commit, :id, :category_icon
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  filter :name
  
  ActiveAdmin.register Category do
      menu :parent => "Produkte", :priority => 12
  end
  
end
