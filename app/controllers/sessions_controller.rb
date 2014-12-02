class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_name] = user.first_name
      session[:user_id] = user.id
      session[:permissions] = user.user_type
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_name] = nil
    session[:user_id] = nil
    session[:permissions] = nil
    redirect_to store_url, notice: "Logged out"
  end

  # This defines what parameters are allowed in this controller
  def session_params
    params.require(:session).permit(:username, :password)
  end

end
