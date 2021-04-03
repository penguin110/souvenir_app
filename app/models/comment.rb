class Comment < ApplicationRecord
  belongs_to :souvenir
  belongs_to :user
end
