class ArticlesController < ApplicationController
  def show
  	@article = Article.find(params[:id])

    # Show the five most recent articles, ordered with the newest first:
    # (limit and order are commands we haven't seen yet. The behavior
    # is to limit the number of results and sort them, respectively.)
    @articles = Article.all.order('created_at desc').limit(5)
    
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.create( article_params )

  	redirect_to article_path(@article)
  end

  def index
  end

  def edit
  end

  private
  	def article_params
  		params.require(:article).permit(:content,:title,:author,:category)
  	end
end
