class ArticlesController < ApplicationController
  #fetch all information from the database
  def index
    @articles= Article.all
  end

  #fetch a single informaion using id
  def show
    @article= Article.find(params[:id])
  end 
end
