class ArticlesController < ApplicationController
  #fetch all information from the database
  def index
    @articles= Article.all
  end

  #fetch a single informaion using id
  def show
    @article= Article.find(params[:id])
  end 
  #create new page and instatiate a new article
  def new
    @article= Article.new
  end
  #post data for creating new article
  def create
    @article= Article.new(article_params)
    if @article.save
      redirect_to @articles
    else
      render :new
    end
    end
  #adding private params- security
  private
  def article_params
    params.require(:article).permit(:title,:body)
  end
end

