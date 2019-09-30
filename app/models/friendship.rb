class Friendship < ApplicationRecord
    belongs_to :quiz 
    belongs_to :buddy 
    has_many :users, through: :quizzes 
    belongs_to :hangout 
    has_many :activities, :through :hangouts

end
