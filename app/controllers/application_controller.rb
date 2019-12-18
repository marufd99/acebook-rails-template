class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # requires authorized to be run before any other method
  # before_action :authorized
# helper_method macro makes the methods below accessible to View

  helper_method :current_user
  helper_method :logged_in?


# to keep trackof current user these are also used in welcome.html.erb
# to determine is a user is already logged_in

  before_action :require_login

  private

  def require_login
    unless current_user
      redirect_to login_url
    end
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

# unless a user is logged in, he will be
#   redirected to the welcome page

# def authorized
#    redirect_to sessions_welcome_url unless logged_in?
# end

end
