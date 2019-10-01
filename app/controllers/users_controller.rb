class UsersController < ApplicationController
    def welcome
        #implicitly renders welcome
    end
    
    def show
      render :show
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def user_params
        params.require(:user).permit(:id, :user_name, :password, :password_confirmation, :email, :name)
    end

end
