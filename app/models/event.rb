class Event < ApplicationRecord
	belongs_to	:creator, :class_name => "User"
	has_many 	:invitations, foreign_key: :event_id
	has_many		:attendees, :through => :invitations, :source => :user
	scope	:future, -> { where("date >= ?", Time.now).order(date: :asc) }
	scope	:past, -> { where("date <= ?", Time.now).order(date: :desc) }
end
