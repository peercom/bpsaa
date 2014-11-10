ActiveAdmin.register Slide do
  permit_params :image, :position, :utf8, :authenticity_token, :commit
  menu :parent => "Website Inhalte", :priority => 13
end