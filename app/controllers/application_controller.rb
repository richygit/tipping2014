class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| 
      u.permit(:password, :password_confirmation, :current_password) 
    }
  end

  def after_sign_in_path_for(user)
    tips_url
  end
end
