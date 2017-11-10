class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :redirect_if_old

  protected

  def redirect_if_old
    if request.host == 'mjbell.herokuapp.com'
      redirect_to "#{request.protocol}mjbell.io#{request.fullpath}", :status => :moved_permanently 
    end
  end
end
