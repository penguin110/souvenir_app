class User < ApplicationRecord
    has_secure_password
    has_many :souvenirs
    has_many :comments
    has_many :likes, dependent: :destroy
    has_many :liked_souvenirs, through: :likes, source: :souvenir
    
    def already_liked?(souvenir)
        self.likes.exists?(souvenir_id: souvenir.id)
    end
end
