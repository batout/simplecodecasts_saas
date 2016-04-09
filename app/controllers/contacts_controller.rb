class ContactsController < ApplicationController

    def new 
        @contacts = Contact.new 
    end
    
    def create
    
    end
end