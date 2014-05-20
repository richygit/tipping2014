class Admin::UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.name = params[:user][:name]
    @user.from = params[:user][:from]
    password = Devise.friendly_token.first(8)
    @user.password = password
    if @user.save
      flash[:notice] = "User created"
      UserMailer.welcome(@user, password).deliver
      redirect_to admin_users_path
    else
      flash[:alert] = "Error creating user"
      render new_admin_user_path
    end
  end

  def edit
  end

  def update
    @user.email = params[:user][:email]
    @user.name = params[:user][:name]
    @user.from = params[:user][:from]
    if @user.save
      flash[:notice] = "User updated"
      redirect_to admin_users_path
    else
      flash[:error] = "Error updating user"
      render edit_admin_user_path
    end
  end

  def destroy
  end
end
