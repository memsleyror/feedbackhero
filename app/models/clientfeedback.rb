class Clientfeedback < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :client_email, :clientfirst_name, :clientlast_name, :growth_area, :hide, :positive, :situation, :user_id, :request_body, :responded_date, :responded_to
  has_many :events, as: :item
  after_create :add_events

  def add_events
    self.events.create(user: self.user)
  end

end
