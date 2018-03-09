# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact
  def contact
    message = Message.new name: 'Felix',
                          email: 'felix@example.com',
                          body: "Hi Matthew, \r\n\r\nI just wanted to reach out to tell you you're awesome. You made this possible and you are just the coolest person alive right now. Thank you for being you. \r\n\r\nSincerely, \r\nMatthew Bell"

    MessageMailer.contact message
  end

  def copy
    message = Message.new name: 'Felix',
                          email: 'felix@example.com',
                          body: "Hi Matthew, \r\n\r\nI just wanted to reach out to tell you you're awesome. You made this possible and you are just the coolest person alive right now. Thank you for being you. \r\n\r\nSincerely, \r\nMatthew Bell"

    MessageMailer.copy message
  end

end
