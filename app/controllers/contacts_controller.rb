class ContactsController < ApplicationController
  def new
  end
  
  def create
  c = Contact.new(email: params[:address], message: params[:message])
    if c.save
    render plain: 'Messege send'
    else
    render :new
    end
  end

end
