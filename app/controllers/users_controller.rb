class UsersController < ApplicationController
# need to figure out how to put this table into dababase
before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
   @user = User.create(params.require(:user).permit(:username,
   :password))
   session[:user_id] = @user.id
   redirect_to '/sessions/index'

end
  def index
    @users = User.all
    # singn in and sign up buttons, redirect
  end

  private

  def user_params
    # params.require(?).permit(?)
    # needs id, name username email password
end
end

# created models/user.rb
