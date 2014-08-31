ActiveAdmin.register Article do

 
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :product_id, :name, :description, :lamp, :length, :dimensions, :space_required, :efficiency, :suspension_distance, :ugr, :ugr1, :article_number, :eei, :degree, :fitting, :light_temperature
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
      column "System" do |article|
        article.product.system.name
      end
      column "Produkt", :product
      column "Leuchtmittel", :lamp
      column "EEI", :eei
      actions
  end
  
  ActiveAdmin.register Article do
      menu :priority => 15
      form do |f|
        f.inputs "Details" do
          f.input :product, :label => 'Produkt', :as => :select, :collection => Product.all.map{|p| ["#{p.system.name}, #{p.name}", p.id]}
          f.input :article_number, :label => "Artikelnummer"
          f.input :lamp, :label => "Leuchtmittel"
          f.input :length, :label => "Länge"
          f.input :eei
          f.input :efficiency, :label => "Wirkungsgrad"
          f.input :space_required, :label => "Platzbedarf"
          f.input :dimensions, :label => "Maße"
          f.input :suspension_distance, :label => "Seilabstand"
          f.input :light_temperature, :label => "Lichtfarbe"
          f.input :ugr
          f.input :ugr1
        end
        f.actions
      end
    end
  
end
