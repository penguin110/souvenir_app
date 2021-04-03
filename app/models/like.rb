class Like < ApplicationRecord
  belongs_to :souvenir
  belongs_to :user
  validates_uniqueness_of :post_id, scope: :user_id
end
