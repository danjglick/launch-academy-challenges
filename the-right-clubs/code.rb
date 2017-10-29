clubs_per_bag = 10
necessary_clubs = [:driver, :pitching_wedge, :putter] 
available_clubs = [:two_iron, :three_iron, :four_iron,:five_iron, :six_iron, :seven_iron, :eight_iron, :nine_iron, :pitching_wedge, :sand_wedge, :driver, :three_wood, :five_wood, :seven_wood, :putter]
possible_bag = available_clubs.sample(clubs_per_bag)

possible_bag.each do |club|
	puts "You have a #{club}."
end
necessary_clubs.each do |club|
	unless possible_bag.include?(club)
		puts "You're missing a #{club}"
	end
end




