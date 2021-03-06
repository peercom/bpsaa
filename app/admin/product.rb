ActiveAdmin.register Product do

 
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :system_id, :image, :assembly_instruction, :sectional_view, :ldt, :ldtzip
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
  
  filter :system, :as => :select
  
  ActiveAdmin.register Product do
      menu :parent => "Produkte", :priority => 14
      form do |f|
        f.inputs "Details" do
          f.input :system, :label => 'System', :as => :select, :collection => System.all.map{|s| ["#{s.category.name}, #{s.name}", s.id]}
          f.input :name, :label => 'Name'
          f.input :description
          f.input :image
          f.input :assembly_instruction, :label => "Anleitung"
          f.input :sectional_view, :label => "Zeichnung"
          f.input :ldt, :label => "LDT emf"
          f.input :ldtzip, :label => "LDT zip"
          
        end
        f.actions
      end
  end
  
end
