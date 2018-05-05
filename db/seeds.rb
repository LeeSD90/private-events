50.times do |i|
	c = User.new(:name => "#{Faker::Name.first_name}")
	c.save
end

2.times do |i|
	e = User.find(i+1).events.build(:name => Faker::Lorem.word , :location => Faker::Lorem.sentence , :description => Faker::Lorem.sentence, :date => Faker::Date.between(2.days.ago, Date.today))
	e.save
end

10.times do |i|
	Event.find(1).attendees << User.find(i+1)
end