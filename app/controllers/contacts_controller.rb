class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Gracias por comunicarte con nosotros!.'
    else
      flash[:alert] = 'No hemos podido enviar tu mensaje, intenta nuevamente en un rato.'
    end
    
    redirect_to root_path
  end
  
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
  
end