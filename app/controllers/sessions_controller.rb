class SessionsController < ApplicationController

  def new
    if session[:user_name] && session[:user_id] && session[:user_type]
      redirect_to '/home'
    end
  end

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_name] = user.first_name
      session[:user_id] = user.id
      session[:user_type] = user.user_type
      if user.user_type == 'defualt'
        redirect_to '/home'
      else
        redirect_to '/admin'
      end
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    #session[:user_name] = nil
    #session[:user_id] = nil
    #session[:user_type] = nil
    reset_session
    redirect_to '/home', notice: "Logged out"
  end

  # This defines what parameters are allowed in this controller
  def session_params
    params.require(:session).permit(:username, :password)
  end

end
