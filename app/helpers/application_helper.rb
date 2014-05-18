module ApplicationHelper
  def include_wallpaper?
    !['home', 'devise/sessions', 'devise/passwords'].include?(params[:controller])
  end
end
