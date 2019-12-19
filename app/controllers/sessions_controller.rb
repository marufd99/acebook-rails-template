class SessionsController < ApplicationController

  skip_before_action :require_login

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to posts_url, :flash => {:success => "You have successfully logged in!"}
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
    redirect_to root_path
  end

  def welcome
  end
end
