class ArticlesController < ApplicationController
before_action :login_required, except: [:index, :show]

def index
	@articles = Atricle.order(released_at: :desc)
end

def show
	@article = Article.find(params[:id])
end

def new
	@article = Article.new
end

def edit
	@article = Article.find(params[:id])
end

def create
	@article = Article.new(params[:article])
	if @article.save
	redirect_to @article, notice: "news register"
	else
		render "new"
	end
end

def update
	@article = Article.find(params[:id])
	@article.assign_attributes(params[:article])
	if @article.save
	redirect_to @article, notice: "news update"
	else
		render "edit"
	end
end

def destroy
	@article = Article.find(params[:id])
	@article.destroy
	redirect_to :articles
end

end
