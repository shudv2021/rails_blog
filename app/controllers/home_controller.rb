class HomeController < ApplicationController
  def index
  end
  
  def contacts
  end
  
  def get_message
  render plain: "#{params[:address]} ----> #{params[:message]}"
  end
end
