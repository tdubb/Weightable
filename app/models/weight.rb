class Weight < ActiveRecord::Base
mount_uploader :pic, ImageUploader
  belongs_to :user
end
