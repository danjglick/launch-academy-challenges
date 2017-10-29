
print "Welcome to the Souq. What is your name? "
customer = gets.chomp

cart = []
not_in_stock = []
finished = "no"
while finished != "finished"
	print "Add to your shopping cart, or type 'finished'! "
	order = gets.chomp
	stock = [
		"old paperback book", 
		"potato", 
		"red onion", 
		"dried lemon", 
		"frankincense", 
		"medicinal herbs", 
		"saffron", 
		"glass spice jar", 
		"red fabric", 
		"orange fabric", 
		"handicrafts", 
		"small persian rug", 
		"medium persian rug", 
		"large persian rug", 
		"extra large persian rug"
	]
	if stock.include?(order)
		cart << order
	elsif order == "finished"
		finished = order
	else
		puts "We don't have that!"
		not_in_stock << order
	end
end

puts "Thanks #{customer}! Here are the items in your cart:"
cart.each do |item|
	puts "* #{item}"
end 
puts "And here are the items that you wanted, but are not in stock: "
not_in_stock.each do |item|
	puts "* #{item}"
end 