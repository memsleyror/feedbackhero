class UserBadge < ActiveRecord::Base
  belongs_to :badge
  belongs_to :user
  belongs_to :sender, foreign_key: 'from_user', class_name: 'User'
  attr_accessible :from_user, :hide, :user_badge_id, :badge_id, :user_id
end
