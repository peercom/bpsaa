class NewsItem < ActiveRecord::Base
  
  def self.current_news(amount = 2)
      find(:all, :limit => amount, :order => "publication_date DESC")
  end
  
  
end
