class Badge < ActiveRecord::Base
  attr_accessible :badge_image, :badge_name
  mount_uploader :badge_image, BadgeUploader
end
