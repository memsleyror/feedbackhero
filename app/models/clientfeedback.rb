class Clientfeedback < ActiveRecord::Base
  belongs_to :user
  attr_accessible :client_email, :clientfirst_name, :clientlast_name, :growth_area, :hide, :positive, :situation
end
