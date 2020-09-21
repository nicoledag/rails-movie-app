class User < ApplicationRecord
    has_many :orders

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true

    has_secure_password

end
