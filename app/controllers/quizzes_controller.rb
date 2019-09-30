class QuizzesController < ApplicationController

    def show 
        render :show
    end 
    

    private 

    def quiz_params 
        params.require(:quiz).permit(:user_id, :friendship_id, :name)
    end 

end
