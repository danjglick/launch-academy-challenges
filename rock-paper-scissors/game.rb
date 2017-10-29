print "Choose rock (r), paper (p), or scissors (s): "
play = gets.chomp

if (play != "r") && (play != "p") && (play != "s")
	puts "Invalid. Try again."
else
	puts "You chose: #{play}"
	comp = ["r", "p", "s"].sample
	puts "Computer chose: #{comp}"	
	print "You "
	if play == comp
		puts "tie!"
	elsif (play == "r") && (comp == "p")
		puts "lose!"
	elsif (play == "r") && (comp == "s")
		puts "win!"
	elsif (play == "p") && (comp == "r")
		puts "win!"
	elsif (play == "p") && (comp == "s")
		puts "lose!"
	elsif (play == "s") && (comp == "r")
		puts "lose!"
	elsif (play == "s") && (comp == "p")
		puts "win!"
	end
end