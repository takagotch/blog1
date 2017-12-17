class TopController < ApplicationController
  def index
   #@message = "msg"
   #@articles = Article.open.order("released_at: :desc").limit(5)
    @articles = Ariticle.open.readable_for(current_member)
	    .order("released_at DESC").limit(5)
  end

  def about
  
  end
end
