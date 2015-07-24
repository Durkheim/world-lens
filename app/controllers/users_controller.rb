class UsersController < ApplicationController
  def index
  end

  def show

  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to user_path(@user)
    else 
      redirect_to root_url
    end
  end

  def update
  end

  def destroy
  end

  private 

  def user_params
    params.require(:user).permit(:username, :email, :password, :avatar, :bio, :private)
  end 
end
