class User < ApplicationRecord
    belongs_to :quiz 

    validates :password, confirmation: { case_sensitive: true }
    
    has_secure_password 

    # def password=(user_input)
    #     hashed_password = BCrypt::Password.create(user_input)
    #     self.update(password_digest: hashed_password)
    # end

    # def authenticate(user_input)
    #     BCrypt::Password.new(self.password_digest) == user_input
    # end

end
