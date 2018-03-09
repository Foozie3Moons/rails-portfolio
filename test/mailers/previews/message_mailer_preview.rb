# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact
  def contact
    message = Message.new name: 'felix',
                          email: 'felix@example.com',
                          body: 'Hello Matthew, please have this job!'

    MessageMailer.contact message
  end

end
