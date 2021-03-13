class Souvenir < ApplicationRecord
    mount_uploader :image_name, ImageUploader
    belongs_to :user
    belongs_to :prefecture
    
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture

    def get_pref_all
      @prefectures = Prefecture.all
    end
end
