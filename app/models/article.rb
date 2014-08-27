class Article < ActiveRecord::Base
   belongs_to :product
   validates_presence_of :article_number
   
end
