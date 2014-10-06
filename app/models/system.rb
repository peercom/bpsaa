class System < ActiveRecord::Base
  
  has_many :products, dependent: :destroy
  belongs_to :category
  validates_presence_of :name
  validates_presence_of :category
  
end
