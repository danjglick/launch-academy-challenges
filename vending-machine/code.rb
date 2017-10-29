items_we_have = "chips popcorn skittles clif-bar mentos gun cheetos m&ms"

print "What item would you like? "
item_wanted = gets.chomp

item_index = items_we_have.index(item_wanted)
if item_index
	puts "Item index: #{item_index}"
else
	puts "We don't have that item"
end


