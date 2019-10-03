class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
        render :index 
    end
    
end
