menu = {
	"hamburger" => 4.0,
	"hotdog" => 3.0,
	"fries" => 2.0,
	"chips" => 1.0,
	"water" => 1.25,
	"soda" => 1.5
}
looping = true
while looping == true
	puts "What would you like to order?"
	order = gets.chomp
	order = order.split(",")
	valid_count = 0
	order.each do |item|
		if !menu.keys.include?(item)
			puts "#{item} is not on the menu! Please order again!"
			break
		else
			valid_count += 1 	
		end	
	end
	if valid_count == order.size
		looping = false
	end
end

cost = 0
order.each do |item|
	cost += menu[item]
end

puts "Thank you! Your total is $#{cost}0."