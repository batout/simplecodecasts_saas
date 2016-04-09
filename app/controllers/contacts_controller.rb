class ContactsController < ApplicationController

    def new 
        @contacts = Contact.new 
    end
    
    def create
        @contacts = Contact.new(contact_params)
        if @contacts.save
            
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:comment]
            ContactMailer.contact_mail(name,email,body).deliver
            
            flash[:success] = "Massege sent"
            redirect_to new_contact_path 
            
        else
            flash[:danger] = "Error occurred"
            redirect_to new_contact_path 
        end
    end
    private
        def contact_params
            params.require(:contact).permit(:name,:email,:comment)
        end
end