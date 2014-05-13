module ApplicationHelper
  def include_wallpaper?
    !['home', 'devise/sessions'].include?(params[:controller])
  end
end
