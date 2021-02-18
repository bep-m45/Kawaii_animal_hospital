class Notice < ApplicationRecord
   belongs_to :category
   mount_uploaders :images, ImageUploader
end
