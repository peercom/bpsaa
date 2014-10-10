class Product < ActiveRecord::Base
  
  belongs_to :system
  has_many :articles, dependent: :destroy
  
  validates_presence_of :name
  validates_presence_of :system
  
  mount_uploader :ldt, LdtUploader
  
  has_paper_trail
  
end
