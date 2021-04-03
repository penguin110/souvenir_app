class Souvenir < ApplicationRecord
    mount_uploader :image_name, ImageUploader
    belongs_to :user
    belongs_to :prefecture
    has_many :comments
    has_many :liked_users, through: :likes,  source: :user
    
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture

    def get_pref_all
        @prefectures = Prefecture.all
    end
end
