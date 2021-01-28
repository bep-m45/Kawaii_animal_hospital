class Category < ApplicationRecord
  belongs_to :notice, optional: true
end
