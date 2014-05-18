class PasswordsController < ActionController::Base
  def email_password_reset
    user = User.find_by(email: params[:email])
    if user
      user.send_reset_password_instructions
      flash[:notice] = "Reset password instructions have been sent to #{user.email}."
      redirect_to root_path
    else
      flash[:error] = "Unknown user"
      render 'devise/passwords/new'
    end
  end
end
