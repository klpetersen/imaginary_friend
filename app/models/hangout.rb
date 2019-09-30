class Hangout < ApplicationRecord
    belongs_to :friendship
    belongs_to :activity 
end
