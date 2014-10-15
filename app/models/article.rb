class Article < ActiveRecord::Base
   belongs_to :product
   validates_presence_of :article_number
   validates_uniqueness_of :article_number
   
   has_paper_trail
   
   def admin_permalink
       admin_article_path(self)
   end
   
end
