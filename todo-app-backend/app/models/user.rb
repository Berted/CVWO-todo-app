class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true, length: {minimum: 4, maximum: 32}
    validates :password, presence: true, length: {minimum: 4, maximum: 256}
end
