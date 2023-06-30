class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, ImageUploader
end
