class Project < ActiveRecord::Base
  has_many :projectmilestones
  has_many :userprojects
  attr_accessible :project_name, :project_id
end
