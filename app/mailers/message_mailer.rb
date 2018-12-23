class MessageMailer < ApplicationMailer

  def contact(message)
    @body = message.body

    mail to: "matthew.bell.290@gmail.com",
         from: "notifications@mjbell.io",
         subject: "New message from #{message.name} | #{message.email}"

  end

  def copy(message)
    @body = message.body
    @name = message.name

    mail to: message.email,
         from: "notifications@mjbell.io",
         subject: "mjbell.io | Thank you for your email!",
         cc: "matthew.bell.290@gmail.com"
  end

  def notify_spam(message)
    @body = message.body
    @name = message.name

    mail to: "matthew.bell.290@gmail.com",
         from: "notifications@mjbell.io",
         subject: "New SCAM message from #{message.name} | #{message.email}"
   end
end
