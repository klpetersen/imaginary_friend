class SessionsController < ApplicationController

    def new
      render :new
    end
  
    def create
      @user = User.find_by(email: params[:user][:email])
  
      if @user && @user.authenticate(params[:user][:password])
        # do something
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:error] = "Invalid email or password combination."
        redirect_to login_path
      end
    end
  
    def destroy
      session.delete(:user_id) # session[:user_id] = nil
      redirect_to '/'
    end
end