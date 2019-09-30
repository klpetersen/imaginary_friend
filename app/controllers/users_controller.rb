class UsersController < ApplicationController


    def welcome
        render :welcome
    end


    def create
        @user = User.create(user_params)
    end

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

end
