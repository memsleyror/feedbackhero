class Requestedfeedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :sender, foreign_key: 'from_user', class_name: 'User'
  attr_accessible :from_user, :growth_area, :hide, :positive, :request_body, :responded_date, :responded_to, :situation, :user_id
end
