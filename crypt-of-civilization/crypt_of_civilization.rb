crypt = []
crypt << "Comptometer"
crypt << "Box of phonographic records"
crypt << "Plastic savings bank"
crypt << "Set of scales"
crypt << "Toast-O-Lator"
crypt << "Sample of aluminum foil"
crypt << "Donald Duck doll"

extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]
crypt += extra

puts ""
puts crypt.length
puts crypt[0]
puts crypt[-1]
puts crypt[1]
puts crypt[2]
puts crypt[-2]

puts ""
puts crypt.index("Toast-O-Lator")
puts crypt.include?("Container of beer")
puts crypt.include?("Toast-O-Lator")
puts crypt.include?("Plastic bird")

puts ""
puts crypt.sort_by {|item| item.length}
puts ""
puts crypt.sort
puts ""
puts crypt.sort.reverse

puts ""
count = 0
while count < crypt.length
	puts crypt[count]
	count += 1
end
puts ""
crypt.each do {|item| puts item}

puts ""
crypt.shift
crypt.pop 
crypt.reject("Set of scales")
crypt.reject("Sample of aluminum foil")

