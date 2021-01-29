class Notice < ApplicationRecord
  has_many :categories, dependent: :destroy
  belongs_to :doctor, optional: true
end
