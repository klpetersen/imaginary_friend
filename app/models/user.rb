class User < ApplicationRecord
    belongs_to :quiz 

    validates :password, confirmation: { case_sensitive: true }
    
    has_secure_password 
    
end
