def disclaimer
	puts "DISCLAIMER: This code may not work the way you expect! Don't sue me!"
end

response = "n"
while response != "y"
	disclaimer
	puts "You must accept our disclaimer to proceed. Do you accept? (y/n)"
	response = gets.chomp
end

puts "3 + 2 = #{rand(6)}"
disclaimer