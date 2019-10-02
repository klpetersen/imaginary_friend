class Friendship < ApplicationRecord
    belongs_to :user
    belongs_to :buddy 
    has_many :hangouts 
    has_many :activities, :through => :hangouts


end
