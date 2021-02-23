class Group < ApplicationRecord
    belongs_to :souvenir, optional:true
    belongs_to :user, optional: true
end
