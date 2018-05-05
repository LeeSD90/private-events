class User < ApplicationRecord
	has_many :events, :foreign_key => "creator_id", :class_name => "Event"
	has_many :invitations, foreign_key: :user_id
	has_many :attended_events, :through => :invitations, :source => :event

	def upcoming_events
		self.attended_events.future
	end

	def previous_events
		self.attended_events.past
	end

end
