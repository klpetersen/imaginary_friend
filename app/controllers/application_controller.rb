class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
helper_method :logged_in?
before_action :authenticate

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authenticate
    if logged_in?
      current_user
    else
      flash[:error] = "Wooooaaahh, slow down there, kiddo! You gotta log in to see that page!"
      redirect_to login_path
    end
  end

end
