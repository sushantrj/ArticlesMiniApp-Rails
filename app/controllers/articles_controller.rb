class ArticlesController < ApplicationController
  
  def show
    @article=Article.find(params[:id])
  end

  def index 
    @article_group=Article.all
  end

  def new
    @article=Article.new
  end

  def create
    @article=Article.new(title: params[:article][:title],description: params[:article][:description])
    # OR Article.new(params.require(:article).permit(:title,:description))
    if(@article.save)
      flash[:notice]="Data successfully saved"
      redirect_to article_path(@article[:id])
    else
      render 'new'
    end
  end

    def edit
      @article=Article.find(params[:id])
    end

    def update
      @article=Article.find(params[:id])
      if (@article.update(params.require(:article).permit(:title, :description)))
        flash[:notice]="Article was updated successfully"
        redirect_to article_path(params[:id])
      else
        render 'edit'
      end
    end

    def destroy
      @article=Article.find(params[:id])
      @article.destroy
      redirect_to articles_path
    end

end