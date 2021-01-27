class Notice < ApplicationRecord
  has_many :categories, dependent: :destroy
  attachment :image_id
end
