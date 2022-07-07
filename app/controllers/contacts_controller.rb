class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
  c = Contact.new(contact_params)
    if c.save
    render plain: 'Messege send'
    else
    render :new
    end
  end

  private
  
  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
