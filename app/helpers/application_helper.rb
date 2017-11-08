module ApplicationHelper
  def active_class(link_path)
    request.fullpath == link_path ? "is-active" : ""
  end
  def active_class_dropdown(link_path)
    request.fullpath == link_path ? "is-active-dropdown" : ""
  end
end
