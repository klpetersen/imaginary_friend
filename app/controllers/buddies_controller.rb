class BuddiesController < ApplicationController
   
    def show
        @buddy = Buddy.find(params[:id])
    end

    def index
        @buddies = Buddy.all 
    end

end
