require 'pry'
class ArticlesController < ApplicationController
  before_action :authenticate_user!
  
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
    if @article.save
      redirect_to @article
    else
      @e = @article.errors.full_messages
      render :new
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    if @article.save
      redirect_to @article
    else 
      render :edit
    end
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
