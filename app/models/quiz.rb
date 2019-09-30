class Quiz < ApplicationRecord
    has_many :users
    has_many :friendships
end
