100.times do |count|
	if ((count + 1) % 3 == 0) && ((count + 1) % 5 == 0)
		puts "FizzBuzz"
	elsif (count + 1) % 3 == 0
		puts "Fizz"
	elsif (count + 1) % 5 == 0
		puts "Buzz"
	else
		puts count + 1
	end
end
