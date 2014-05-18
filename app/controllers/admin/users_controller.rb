class Admin::UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    user = User.new
    user.email = params[:user][:email]
    user.name = params[:user][:name]
    user.from = params[:user][:from]
    user.password = Devise.friendly_token.first(8)
    if user.save
      flash[:notice] = "User created"
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
    @user.save!
    redirect_to admin_users_path
  end

  def destroy
  end
end
