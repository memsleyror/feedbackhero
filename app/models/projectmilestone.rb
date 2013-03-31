class Projectmilestone < ActiveRecord::Base
  belongs_to :project
  attr_accessible :projectmilestone_date, :projectmilestone_name
end
