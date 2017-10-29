print "How tall is the snow in feet? "
height = ((gets.chomp).to_f).ceil

print "How many square feet is your driveway? "
sq_ft = ((gets.chomp).to_f).ceil

cubic_ft = height * sq_ft
puts "Cubic feet: #{cubic_ft}"

print "Quote price: "
if (cubic_ft >= 0) && (cubic_ft <= 49)
	puts "$20"
elsif (cubic_ft >= 50) && (cubic_ft <= 149)
	puts "$50"
elsif (cubic_ft >= 150) && (cubic_ft <= 299)
	puts "$100"
else
	puts "$150"
end


