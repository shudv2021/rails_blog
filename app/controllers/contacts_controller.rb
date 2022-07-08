class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render :new
  end
  
  def create
  c = Contact.new(contact_params)
    if c.valid?
    c.save
    render plain: 'Messege send'
    else
      new
    end
  end

  private
  
  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
