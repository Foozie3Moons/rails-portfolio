class MessageMailer < ApplicationMailer

  def contact(message)
    @name = message.name
    @email = message.email
    @body = message.body

    mail to: "matthew.bell.290@gmail.com",
        from: "notifications@mjbell.io",
        subject: "New message from #{@name}"
  end

end
