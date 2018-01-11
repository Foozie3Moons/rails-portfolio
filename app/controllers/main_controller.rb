class MainController < ApplicationController
  def index
  end

  def contact
  end

  def testimonials
  end

  def send_mail
    data = params[:body]
    subject = params[:subject]
    user = params[:email]
    ContactMailer.mail_method(data,user,subject).deliver
    redirect_to contact_path
  end

  def resume
    @pdf = "app/assets/files/matthew_bell_without_phone_number.pdf"
  end

  def pdf
    pdf_filename = File.join(Rails.root, "app/assets/files/matthew_bell_with_phone_number.pdf")
    send_file(pdf_filename, :disposition => 'inline', :filename => "Matthew_Bell.pdf", :type => "application/pdf")
  end

  def pdf_download
    pdf_filename = File.join(Rails.root, "app/assets/files/matthew_bell_with_phone_number.pdf")
    send_file(pdf_filename, :filename => "Matthew_Bell.pdf", :type => "application/pdf")
  end

  def portfolio
  end
end
