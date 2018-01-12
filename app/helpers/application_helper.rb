module ApplicationHelper
  def is_active? link_path
    request.fullpath == link_path ? "is-active" : ""
  end

  def about_page?
    paths = [
      about_bio_path
      # about_life_path
    ]
    paths.each do |path|
      return true if request.fullpath == path
    end
    false
  end

  def portfolio_page?
    request.fullpath == portfolio_path
  end

  def mobile?
    if session[:mobile_param]
    session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
end
