class Event < ActiveRecord::Base
  belongs_to :item, polymorphic: true
  belongs_to :user
  attr_accessible :user
end
