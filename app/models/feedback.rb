class Feedback < ActiveRecord::Base
  belongs_to :user
  attr_accessible :from_user, :growth_area, :hide, :positive, :situation, :user_id
end
