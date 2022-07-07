class ContactsController < ApplicationController
  def new
  end
  
  def create
    @params = "#{params[:message]} --- #{params[:address]}"
    
  end


end
