class UsersController < ApplicationController
  before_action :authorize, only: [:show, :edit]

  def new
  end

  def show
    @countries = Country.all
    @user = User.find(params[:id])
    @visited_countries = @user.visited_countries
    @user_countries = @user.countries
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

  def edit
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
