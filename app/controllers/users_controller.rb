class UsersController < ApplicationController


    def welcome
        #implicitly renders welcome
    end
    
    def show
        current_user = User.find_by(session[:user_id])
        @user = User.find_by(id: params[:id])
        if current_user && current_user == @user
            render :show
        else
            redirect_to login_path
        end
    end

    def create
        @user = User.create(user_params)
    end

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

end
