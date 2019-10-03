require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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


16.times do
    Buddy.create(name: Faker::Superhero.name, img_num: buddy_img_num_select(nums), w_prefs: buddy_prefs_create("012"), s_prefs: buddy_prefs_create("345"), f_prefs: buddy_prefs_create("678"))
  end


