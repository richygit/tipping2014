module ApplicationHelper
  def background_style
    binding.pry
    ['home', 'devise/sessions'].include?(params[:controller]) ? 'background-image: none' : ''
  end
end
