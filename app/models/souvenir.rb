class Souvenir < ApplicationRecord
    mount_uploader :image_name, ImageUploader
    belongs_to :user
end
