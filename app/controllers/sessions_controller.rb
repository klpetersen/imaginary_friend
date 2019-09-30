class SessionsController < ApplicationController
skip_before_action :authenticate, only: [:new, :create]
    def new
        #implicitly renders new / login
    end

    def authenticate
        @user = User.find_by(email: params[:user][:email])

        if @user.authenticate(params[:user][:password])
            session[:user_id] = @user.user_id
            redirect_to user_path(@user)
        else
            flash[:error] = 'Incorrect login! Please try again, or create a new account'
            redirect_to login_path
        end
    end


    def create
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Sorry, champ! Invalid Login!"
            redirect_to login_path
        end
    end 

    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end

end