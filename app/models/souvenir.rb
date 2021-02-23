class Souvenir < ApplicationRecord
    mount_uploader :image_name, ImageUploader
    has_many :groups
    has_many :users, through: :groups
    
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture
end
