class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to posts_url
    else
      flash.now[:error] = "Wrong username or password!"
      # redirect_to sessions_login_url
      render('login')
    end
  end

  def login
  end

# not implemented yet
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to sessions_login_url

  end

  def welcome
  end
end
