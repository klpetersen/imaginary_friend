class Friendship < ApplicationRecord
    belongs_to :user
    belongs_to :buddy 
    belongs_to :hangout 
    has_many :activities, :through :hangouts

end
