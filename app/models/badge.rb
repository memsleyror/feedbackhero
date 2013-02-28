class Badge < ActiveRecord::Base
  has_many :user_badges
  attr_accessible :badge_image, :badge_name, :badge_id
  mount_uploader :badge_image, BadgeUploader
end
