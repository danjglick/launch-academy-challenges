total_sales = 0
while total_sales < 100 do
	print "How much in sales today? "
	new_sale = (gets.chomp).to_i
	total_sales += new_sale
end
puts "Congratulations! At least $100 in total sales!"
