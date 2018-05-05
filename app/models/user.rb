class User < ApplicationRecord
	has_many :events, :foreign_key => "creator_id", :class_name => "Event"
	has_many :invitations
	has_many :attended_events, :through => :invitations, :source => :event
end
