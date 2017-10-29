print "What is your name? "
username = gets.chomp
items = []
amounts = []
item = ""

while item != "done" do	
	print "Add something to the time capsule (or type 'done'): "
	item = gets.chomp
	if item != "done"
		print "How many #{item}s? "
		amount = gets.chomp
		amounts << amount
		items << item
	end
end

puts "#{username}, these are the items in your time capsule:"
items.each_with_index do |item, count|
	puts "* #{item} (#{amounts[count]})"
end