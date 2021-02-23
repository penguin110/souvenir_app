class User < ApplicationRecord
    has_secure_password
    has_many :groups
    has_many :souvenirs, through: :groups
end
