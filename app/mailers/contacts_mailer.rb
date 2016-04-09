class ContactMailer < ActionMailer::Base

    default to: "amz93@outlook.com"
    def contact_mail(name,email,body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email , subject: "Contact form Massege")
    end
end

    