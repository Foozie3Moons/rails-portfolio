class MainController < ApplicationController
  def index
  end

  def testimonials
  end

  def resume
    @pdf = "app/assets/files/matthew_bell_without_phone_number.pdf"
  end

  def pdf
    pdf_filename = File.join(Rails.root, "app/assets/files/Matthew_Bell_Resume.pdf")
    send_file(pdf_filename, :disposition => 'inline', :filename => "Matthew_Bell_Resume.pdf", :type => "application/pdf")
  end

  def pdf_download
    pdf_filename = File.join(Rails.root, "app/assets/files/Matthew_Bell_Resume.pdf")
    send_file(pdf_filename, :filename => "Matthew_Bell_Resume.pdf", :type => "application/pdf")
  end

  def portfolio
  end
end
