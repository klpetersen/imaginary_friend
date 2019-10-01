class UsersController < ApplicationController
    def welcome
        #implicitly renders welcome
    end
    
    def show
        @user = User.find(params[:id])
    end

    def create
        # create new user
        # add and error handling validations later
        @user = User.create(user_params)

        redirect_to user_path(@user)
    end

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

    def new

    end

end
