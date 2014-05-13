module ApplicationHelper
  def background_style
    ['home', 'devise/sessions'].include?(params[:controller]) ? 'background-image: none' : ''
  end
end
