class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:welcome, :new, :create]
    helper_method :has_friendship?, :current_buddy
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

    def has_friendship?
        Friendship.all.find_by(user_id: @user.id)
    end

    def current_buddy
        @buddy = Buddy.all.find_by(id: @user.friendships.first.buddy_id)
    end

    def find_a_friend
        @buddy = Buddy.all.sample 
        Friendship.create(user_id: @user.id, buddy_id: @buddy.id)
        render :show
    end

   

    private
    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name)
    end

end
