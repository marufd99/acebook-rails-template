class UsersController < ApplicationController
# need to figure out how to put this table into dababase
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to posts_url
  end

  def index
    @users = User.all
    # singn in and sign up buttons, redirect
  end

  private

  def user_params
    params.require(:user).permit(:username)
    # params.require(?).permit(?)
    # needs id, name username email password
end
end

# created models/user.rb
