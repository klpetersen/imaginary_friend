class SessionsController < ApplicationController
    skip_before_action :authenticate, only: [:new, :create, :destroy]

    def new
      render :new
    end
  
    def create
      @user = User.find_by(email: params[:user]['email'])
        
  
      if @user && @user.authenticate(params[:user]['password'])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:error] = "Sorry, bud! That login was invalid"
        redirect_to login_path
      end
    end
  
    def destroy
      session.delete(:user_id) 
      redirect_to '/'
    end

    private

    def user_params
        params.require(:user).permit(:id, :user_name, :password, :password_confirmation, :email, :name)
    end
end