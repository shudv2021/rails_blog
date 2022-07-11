require 'pry'
class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def create
        
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      @e = @article.errors.full_messages
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
  end
  
  def destroy
    Article.find(params[:id]).delete
    @articles = Article.all
    render :index
  end
  
  private
  
  def article_params
  params.require(:article).permit(:title, :text)
  end
  
  
end
