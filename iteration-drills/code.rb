# Write Ruby->English answers here as comments in your code:
# (1) For each "number" in "numbers", print the product of "number" and 3,
# (2) Print the length of each "name" in "names",
# (3) Print the sum of every "number" in "numbers".
# (4) For each "name"-"age" pairing in "hash", print "'name' is 'age' years old".
# (5) Print the sum of every "value" in "account".
# (6) For each "name"-"address" pairing in "addresses", print "'name' lives on 'address'".

# Write English->Ruby answers here as comments in your code:
# (1) For every element 'word' in the array 'sentences' print out the word.
# sentences.each {|word| puts word}
# (2) For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.
# numbers.each do |phone_number|
# 	if (phone_number == 774) or (phone_number == 508)
# 		puts phone_number
# 	end
# end
# (3) For every element 'number' in the array 'numbers', print out every odd number.
# numbers.each do |number|
# 	if number % 2 == 1
# 		puts number
# 	end
# end
# (4) For every name-age pair in the hash 'ages', print out each pair.
# ages.each do |name, age|
# 	print name
# 	puts age
# end
# (5) For every name-age pair in the hash 'ages', print out a pair if the age is > 10.
# ages.each do |name, age|
# 	if age > 10
# 		print name
# 		puts age
# 	end
# end
# (6) For every name-age pair in the hash 'ages', print out a pair if the age is even.
# ages.each do |name, each|
# 	if age % 2 == 0
# 		print name
# 		puts age
# 	end
# end

# Write Ruby code to find out the answers to the following questions:
array1 = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]
# * What is the sum of all the numbers in `array`?
sum = 0
array1.each do |num|
	sum += num
end
puts sum
# * How would you print out each value of the array?
array1.each do |num|
	puts num
end
# * What is the sum of all of the even numbers?
sum = 0
array1.each do |num|
	if num % 2 == 0
		sum += num
	end
end
puts sum
# * What is the sum of all of the odd numbers?
sum = 0
array1.each do |num|
	if num % 2 == 1
		sum += num
	end
end
puts sum
# * What is the sum of all the numbers divisble by 5?
sum = 0
array1.each do |num|
	if num % 5 == 0
		sum += num
	end
end
puts sum
# * What is the sum of the squares of all the numbers in the array?
sum = 0
array1.each do |num|
	sum += num ** 2
end

# Write Ruby code to find out the answers to the following questions:
array2 = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]
# * How would you print out each name backwards in `array`?
reversed_array = []
until array2.empty?
	reversed_array.push(array2[-1])
	array2.pop
end
reversed_array.each do |name|
	reversed_name = ""
	name.each_char do |char|
		reversed_name.prepend(char)
	end
	puts reversed_name
end
# * What are the total number of characters in the names in `array`?
total_char = 0
array2.each do |name|
	name.each_char do |char|
		total_char += 1
	end
end
puts total_char
# * How many names in `array` are less than 5 characters long?
total_under_5 = 0
array2.each do |name|
	if name.size < 5
		total_under_5 += 1
	end
end
puts total_under_5
# * How many names in `array` end in a vowel?
total_vowel_end = 0
vowels = ["a", "e", "i", "o", "u", "y"]
array2.each do |name|
	if vowels.include?(name[-1])
		total_vowel_end += 1
	end	
end
puts total_vowel_end
# * How many names in `array` are more than 5 characters long?
total_over_5 = 0
array2.each do |name|
	if name.size > 5
		total_over_5 += 1
	end
end
puts total_over_5
# * How many names in `array` are exactly 5 characters in length?
total_size_5 = 0
array2.each do |name|
	if name.size == 5
		total_size_5 += 1
	end
end
puts total_size_5
