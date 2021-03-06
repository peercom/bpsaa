ActiveAdmin.register Article do

 
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :product_id, :name, :description, :luminous_flow, :ceiling_space, :lamp, :transformer, :length, :dimensions, :space_required, :efficiency, :suspension_distance, :ugr, :ugr1, :article_number, :eei, :degree, :fitting, :light_temperature
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  
  index do
      column "Artikelnummer", :article_number
      column "Kategorie" do |article|
        article.product.system.category.name
      end
      column "System" do |article|
        article.product.system.name
      end
      column "Produkt", :product
      column "Länge", :length
      column "Leuchtmittel", :lamp
      column "EEI", :eei
      actions
  end
  
  filter :product, :as => :select, :collection => proc { Product.order(:system_id).order(:name).map{|p| ["#{p.system.category.name}: #{p.system.name}, #{p.name}", p.id]}}
  filter :article_number
  filter :name
  
  ActiveAdmin.register Article do
      menu :parent => "Produkte", :priority => 15
      form do |f|
        f.inputs "Details" do
          f.input :product, :label => 'Produkt', :as => :select, :collection => Product.all.map{|p| ["#{p.system.category.name}: #{p.system.name}, #{p.name}", p.id]}
          f.input :article_number, :label => "Artikelnummer"
          f.input :lamp, :label => "Leuchtmittel"
          f.input :length, :label => "Länge"
          f.input :eei
          f.input :transformer, :label => "Netzgerät"
          f.input :efficiency, :label => "Wirkungsgrad"
          f.input :space_required, :label => "Platzbedarf"
          f.input :ceiling_space, :label => "Deckenmaß"
          f.input :dimensions, :label => "Maße"
          f.input :suspension_distance, :label => "Seilabstand / Befestigungsabstand"
          f.input :light_temperature, :label => "Lichtfarbe"
          f.input :luminous_flow, :label => "Lichtstrom"
          f.input :ugr
          f.input :ugr1
        end
        f.actions
      end
    end
  
end
