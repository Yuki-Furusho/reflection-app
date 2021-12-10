class ContactsController < ApplicationController  
  def new
    @contact = Contact.new
  end
  
  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render :new
    end 
  end

  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def done
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      render :done
    else
      render :new
    end
	end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
