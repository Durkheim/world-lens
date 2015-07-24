class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user_path(user)
    else 
      flash[:danger] = "Invalid email or password"
      redirect_to root_path
    end 
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url 
  end 
end
