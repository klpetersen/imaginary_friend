class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate
    
    def authenticate
        if logged_in?
            current_user
        else
            flash[:error] = "Woooaaahh, slow down there, kiddo! You gotta login to see this page!"
            redirect_to login_path
        end
    end

    def current_user
        @user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end
end
