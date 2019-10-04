require 'faker'

#logic for generating buddy info----
nums = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
def buddy_img_num_select(nums)
  a = nums.sample
  nums.delete(a)
  a
end

def buddy_prefs_create(prefs)
  activity = prefs
  activity_prefs = activity[rand(3)]
end
#-----

#buddy seed
16.times do
    Buddy.create(name: Faker::Superhero.name, img_num: buddy_img_num_select(nums), w_prefs: buddy_prefs_create("012"), s_prefs: buddy_prefs_create("345"), f_prefs: buddy_prefs_create("678"))
  end

#activity seed
Activity.create(name: 'workout', act_type: 'Weights', pref_value: 0)
Activity.create(name: 'workout', act_type: 'Running', pref_value: 1)
Activity.create(name: 'workout', act_type: 'Yoga', pref_value: 2)
Activity.create(name: 'shopping', act_type: 'Abercrombie', pref_value: 3)
Activity.create(name: 'shopping', act_type: 'Hot Topic', pref_value: 4)
Activity.create(name: 'shopping', act_type: 'H&M', pref_value: 5)
Activity.create(name: 'food', act_type: 'Cafe', pref_value: 6)
Activity.create(name: 'food', act_type: 'Pizza', pref_value: 7)
Activity.create(name: 'food', act_type: 'Mexican', pref_value: 8)

