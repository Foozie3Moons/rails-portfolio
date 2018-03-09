class MessageMailer < ApplicationMailer

  def contact(message)
    @body = message.body

    mail to: "matthew.bell.290@gmail.com", from: message.email
  end

end
