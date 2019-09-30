class Activity < ApplicationRecord
    has_many :hangouts 
    has_many :friendships, through: :hangouts
end
