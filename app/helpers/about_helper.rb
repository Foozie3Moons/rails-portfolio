module AboutHelper
  def about_is_active?
    paths = [
      root_path
      # about_bio_path,
      # about_life_path
    ]
    paths.each do |path|
      if request.fullpath.eql? path
        return 'is-active-dropdown'
      end
    end
    return ''
  end
end
