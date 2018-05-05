50.times do |i|
	c = User.new(:name => "#{Faker::Name.first_name}")
	c.save
end

2.times do |i|
	e = User.find(i+1).events.build(:name => Faker::Lorem.word , :location => Faker::Lorem.sentence , :description => Faker::Lorem.sentence, :date => Faker::Date.between(5.days.ago, 2.days.ago))
	e.save
	e = User.find(i+1).events.build(:name => Faker::Lorem.word , :location => Faker::Lorem.sentence , :description => Faker::Lorem.sentence, :date => Faker::Date.forward(20))
	e.save
end

50.times do |i|
	begin
		Event.find(rand(1..4)).attendees << User.find(rand(1..50))
	rescue => e
		puts "Error #{e.message}"
	end
end