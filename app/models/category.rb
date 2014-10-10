class Category < ActiveRecord::Base
  
  mount_uploader :category_icon, CategoryIconUploader
  has_many :systems, dependent: :destroy
  
  has_paper_trail
  
end
