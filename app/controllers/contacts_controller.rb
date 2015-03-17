class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Registro exitoso. Espera nuestra llamada en los próximos días mientras validamos tu información.'
    else
      flash.now[:error] = 'No se pudo enviar el mensaje. Por favor inténtalo más tarde.'
      render :new
    end
  end
end