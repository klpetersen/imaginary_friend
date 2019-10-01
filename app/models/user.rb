class User < ApplicationRecord
    has_many :friendships
    validates :password, confirmation: { case_sensitive: true }
    
    has_secure_password 

end
