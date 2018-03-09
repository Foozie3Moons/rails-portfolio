class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@mjbell.io'

  layout 'mailer'
end
