class UserBadge < ActiveRecord::Base
  belongs_to :badge
  belongs_to :user
  belongs_to :sender, foreign_key: 'from_user', class_name: 'User'
  attr_accessible :from_user, :hide, :user_badge_id, :badge_id, :user_id

  has_many :events, as: :item
  after_create :add_events

  def add_events
    self.events.create(user: self.user)
    self.events.create(user: self.from_user)
  end
end
