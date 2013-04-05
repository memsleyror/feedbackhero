class Feedback < ActiveRecord::Base
  belongs_to :user 
  belongs_to :sender, foreign_key: 'from_user', class_name: 'User'
  attr_accessible :from_user, :growth_area, :hide, :positive, :situation, :user_id

  has_many :events, as: :item
  after_create :add_event

  def add_event
    self.events.create(user: self.user)
    self.events.create(user: self.from_user)
  end
end
