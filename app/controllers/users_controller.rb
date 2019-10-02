class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:welcome, :new, :create]
    def welcome
        #implicitly renders welcome
    end
    
    def show
        byebug
        @user = User.find(params[:id])
    end

    def create
        # create new user
        # add and error handling validations later
        @user = User.create(user_params)
        #session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def new

    end
    private
    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

end
