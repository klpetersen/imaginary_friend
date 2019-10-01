class SessionsController < ApplicationController

    def new
      render :new
    end
  
    def create
      @user = User.find_by(email: params[:user][:email])
      byebug
  
      if @user && @user.authenticate(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:error] = "Invalid"
        redirect_to login_path
      end
    end
  
    def destroy
      session.delete(:user_id) # session[:user_id] = nil
      redirect_to '/'
    end

    def user_params
        params.require(:user).permit(:id, :user_name, :password, :password_confirmation, :email, :name)
    end
end