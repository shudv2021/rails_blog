require 'pry'
class ArticlesController < ApplicationController
  def new
  end
  
  def create
    @title = params[:title]
    render plain: "OK"
  end
end
