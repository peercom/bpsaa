class Slide < ActiveRecord::Base
  
  mount_uploader :image, NewsItemImageUploader
  
end
