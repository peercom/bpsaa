class Product < ActiveRecord::Base
  
  belongs_to :system
  has_many :articles, dependent: :destroy
  
end
