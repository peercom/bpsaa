class WelcomeController < ApplicationController

  def index
    @news_items = NewsItem.current_news
    @slides = Slide.find(:all, :order => "position ASC")
  end
end
