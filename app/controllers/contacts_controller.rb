class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.contact_message(contact_params).deliver
      redirect_to root_path, :flash  => { :success => "Thank you for contacting us. We will return as soon as possible! :)" }
    else
      render :action => 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
