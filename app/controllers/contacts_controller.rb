class ContactsController < ApplicationController
  before_action :contact_find, only: [:show, :edit, :update]
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path(@contact.id)
    else
      render :new
    end 
  end

  def show
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to contact_path(params[:id])
    else
      render :edit
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end

  def contact_find
    @contact = Contact.find(params[:id])
  end
end
