# Write Ruby code to find out the answers to the following questions:
transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]
# * What is the value of the first transaction?
puts transactions[0]
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions[-1]
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions[5]
# * How many transactions are there in total?
total_transactions = 0
transactions.each do 
	total_transactions += 1
end
puts total_transactions
# * How many positive transactions are there in total?
positive_transactions = 0
transactions.each do |transaction|
	if transaction > 0
		positive_transactions += 1
	end
end
puts positive_transactions
# * How many negative transactions are there in total?
negative_transactions = 0
transactions.each do |transaction|
	if transaction < 0
		negative_transactions += 1
	end
end
puts negative_transactions
# * What is the largest withdrawal?
smallest = 0
transactions.each do |transaction|
	if transaction < smallest
	smallest = transaction
	end
end
puts smallest
# * What is the largest deposit?
largest = 0
transactions.each do |transaction|
	if transaction > largest
		largest = transaction
	end
end	
puts largest
# * What is the small withdrawal?
small_withdrawl = -9000000000000
transactions.each do |transaction|
	if transaction < 0 && transaction > small_withdrawl
		small_withdrawl = transaction
	end
end
puts small_withdrawl
# * What is the smallest deposit?
small_deposit = 90000000
transactions.each do |transaction|
	if transaction > 0 && transaction < small_deposit
		small_deposit = transaction
	end
end
puts small_deposit
# * What is the total value of all the transactions?
total_value = 0
transactions.each do |transaction|
	total_value += transaction
end
puts total_value
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
total_value = 0
transactions.each do |transaction|
	total_value += transaction
end
puts total_value + 239_900

# Write Ruby code to find out the answers to the following questions:
best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }
# * How many records are in `best_records`?
total = 0
best_records.each_key do |record|
	total += 1
end
puts total
# * Who are all the artists listed?
best_records.each_key do |artist|
	puts artist
end
# * What are all the album names in the hash?
best_records.each_value do |album|
	puts album
end
# * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
puts best_records
# * Add your favorite musician and their best album to the list.
best_records.merge!({"Arctic Monkeys"=>"Whatever People Say I Am, That's What I'm Not"})
puts best_records
# * Change `Nirvana`'s album to another.
best_records.delete("Nirvana")
best_records.merge!("Nirvana"=>"MTV Unplugged")
puts best_records
# * Is `Nirvana` included in `best_records`?
puts best_records.include?("Nirvana")
# * Is `Soundgarden` included in `best_records`?
puts best_records.include?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
unless best_records.include?("Soundgarden")
	best_records.merge!("Soundgarden"=>"Badmotorfinger")
end
puts best_records
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each do |artist, album|
	if artist.size <= 6
		puts "#{artist}=>#{album}"
	end
end
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each do |artist, album|
	if artist.size > 6
		puts "#{artist}=>#{album}"
	end
end
# great albums!!!!
