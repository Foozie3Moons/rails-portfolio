module ApplicationHelper
  def active_class(link_path)
    request.fullpath == link_path ? "is-active" : ""
  end
end
