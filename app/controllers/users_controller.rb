class UsersController < ApplicationController

# new and create methods can skip the authorized method
#requirement set in ApplicationController
# skip_before_action :authorized, only: [:new, :create]

  skip_before_action :require_login

  def new
    @user = User.new
  end

  # def create
  #   @user = User.create(user_params)
  #   redirect_to posts_url
  # end

  def create
   @user = User.create(params.require(:user).permit(:name, :username, :email,
   :password))
   session[:user_id] = @user.id
   redirect_to posts_url, :flash => {:success => "You've successfully signed up!"}
 end

  def index
    @users = User.all
    # singn in and sign up buttons, redirect
  end

end
