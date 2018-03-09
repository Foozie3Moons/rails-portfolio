class MessageMailer < ApplicationMailer

  def contact(message)
    @body = message.body

    mail to: "matt@example.com", from: message.email
  end
  
end
