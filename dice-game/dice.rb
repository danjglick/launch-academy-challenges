continue = "y"
while continue == "y"
	print "How many sides does your dice have? "
	sides = (gets.chomp).to_i
	print "How many times would you like to roll your pair of dice? "
	rolls = (gets.chomp).to_i
	count = 1
	while count <= rolls do
		count += 1
		dice_1 = rand(sides) + 1
		dice_2 = rand(sides) + 1
		total = dice_1 + dice_2
		puts "You rolled a #{dice_1} and a #{dice_2}. Your total is #{total}."
	end
	print "Would you like to play again (y/n)? "
	continue = gets.chomp
end
