class MainController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def send_mail
    data = params[:body]
    subject = params[:subject]
    user = params[:email]
    ContactMailer.mail_method(data,user,subject).deliver
    redirect_to contact_path
  end

  def portfolio
  end
end
