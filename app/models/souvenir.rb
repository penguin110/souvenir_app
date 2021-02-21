class Souvenir < ApplicationRecord
    mount_uploader :image_name, ImageUploader
    belongs_to :user
    
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture
end
