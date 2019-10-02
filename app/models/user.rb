class User < ApplicationRecord
    has_many :friendships
    validates :password, confirmation: { case_sensitive: true }
    validates :email, uniqueness: true
    validates :user_name, uniqueness: true
    validates :email, presence: true
    validates :password, presence: true
    validates :password_confirmation, presence: true

    
    has_secure_password 

end
