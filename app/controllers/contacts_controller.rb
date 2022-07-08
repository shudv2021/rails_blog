class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
  @contact = Contact.new(contact_params)
    if @contact.valid?
    @contact.save
    render plain: 'Messege send'
    else
      @e = @contact.errors.full_messages
      render action: 'new'
    end
  end

  private
  
  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
