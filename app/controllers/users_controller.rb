class UsersController < ApplicationController

  # new and create methods can skip the authorized method
  #requirement set in ApplicationController
  # skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
<<<<<<< HEAD
    @user = User.create(params.require(:user).permit(:username,
      :password))
      session[:user_id] = @user.id
      redirect_to posts_url
    end

    def index
      @users = User.all
      # singn in and sign up buttons, redirect
    end

<<<<<<< HEAD
  end
=======

  private
>>>>>>> b6c42f9a84b8f1edc14f0c65823ed03c10e21c8c
=======
   @user = User.create(params.require(:user).permit(:username,
   :password))
   session[:user_id] = @user.id
   redirect_to posts_url
 end

  def index
    @users = User.all
    # singn in and sign up buttons, redirect
  end

end
>>>>>>> 0c18a218bd365a9fe170eee70be09878f4e3857d
