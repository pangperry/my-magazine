class StaticController < ApplicationController
  def index
  end
  
  def category
    @breaking_news_items = []

    @category = 'tech'
  end

  def article
  end

  def edit
  end

  def subscribe
  end

  def profile
  end
end
