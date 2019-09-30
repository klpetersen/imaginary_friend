class UsersController < ApplicationController
skip_before_action :authenticate, only: :welcome
    def welcome
        #implicitly renders welcome
    end
    
    def show
      
    end

    def create
        @user = User.create(user_params)
    end

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

end
