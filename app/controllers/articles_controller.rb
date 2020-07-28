class ArticlesController < ApplicationController
  
  def show
    @article=Article.find(params[:id])
  end

  def index 
    @article_group=Article.all
  end

end