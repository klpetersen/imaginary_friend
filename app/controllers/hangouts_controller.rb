class HangoutsController < ApplicationController

    # start_hangout creates an instance of a hangout using the activity id of that activity, 
    # and the friendship id of the current user, using the session's user_id
    # each activity will hold a unique numeric value
    # it will then call start_hangout, and use it to access the friendship to find the buddy's prefernces and compare it with it's numeric value. 
    # lastly, it will increment or decrement the friendship rank based on those results.
    # ENCAPSULATE

    

    def find_activity_id(pref_value)
       @activity = Activity.all.find_by(pref_value: pref_value)
       @activity.id
    end

    def find_friendship
        @user = User.find_by(id: session[:user_id])
        @friendship = Friendship.all.find_by(user_id: @user.id) # can probably just call session[:user_id] here instead of creating @user
    end

    def create_hangout(activity_id)
        @hangout = Hangout.create(activity_id: activity_id, friendship_id: @friendship.id)
    end

    def is_pref?(pref_value)
        if (0..2).include?(pref_value)
            @friendship.buddy.w_prefs == pref_value.to_s
        elsif (3..5).include?(pref_value)
            @friendship.buddy.s_prefs == pref_value.to_s
        elsif (6..8).include?(pref_value)
            @friendship.buddy.f_prefs == pref_value.to_s
        end
    end

    def adjust_rank(result)
        new_rank = result == true ? @friendship.friendship_rank += 1 : @friendship.friendship_rank -= 1
        @friendship.update(friendship_rank: new_rank)
    end

    def log_adventure(pref_value)
        new_adventures = @friendship.adventures += pref_value.to_s
        @friendship.update(adventures: new_adventures)
    end

    def win_lose_check
        if @friendship.friendship_rank <= 0
            redirect_to end_friendship_path
        else
            redirect_to user_path(@user)
        end
    end

    def adventure_available?(pref_value)
        !@friendship.adventures.include?(pref_value.to_s)
    end

    def find_and_compare(pref_value) # also since all these methods will be encapsulated, probably don't need to pass in these values beyond the first pref_value
        find_friendship 
        if adventure_available?(pref_value)
            activity_id = find_activity_id(pref_value)
            create_hangout(activity_id)
            result = is_pref?(pref_value)
            adjust_rank(result)
            log_adventure(pref_value)
            win_lose_check
        else
            redirect_to activities_path
        end
        
    end

    def lift_weights
        find_and_compare(0)
    end

    def go_run
        find_and_compare(1)
    end

    def yoga
        find_and_compare(2)
    end

    def abercrombie
        find_and_compare(3)
    end

    def hot_topic
        find_and_compare(4)
    end

    def h_and_m
        find_and_compare(5)
    end

    def cafe
        find_and_compare(6) 
   end

    def pizza
        find_and_compare(7)
    end

    def mexican
        find_and_compare(8)
    end

end
