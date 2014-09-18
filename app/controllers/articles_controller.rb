class ArticlesController < ApplicationController
  def show
  	@article = Article.find(params[:id])
    
    @category = @article.category

    @breaking_news_items = Article.all.order('created_at desc').limit(5)

  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.create( article_params )

  	redirect_to article_path(@article)
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update( article_params )

    redirect_to article_path(@article)
  end

  private
  	def article_params
  		params.require(:article).permit(:content,:title,:author,:category)
  	end
end
