class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:welcome, :new, :create]
    def welcome
        #implicitly renders welcome
    end
    
    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def new

    end
    private
    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

end
