print "What item would you like? "
item = gets.chomp
print "How many #{item}s would you like (use number keys or 'tons')? "	
amount = gets.chomp
if amount.index("tons")
	while 1
		puts item
		random_num = rand(14)
		if random_num == 0
			break
		end
	end
else
	amount = amount.to_i
	amount.times do
		puts item
	end
end