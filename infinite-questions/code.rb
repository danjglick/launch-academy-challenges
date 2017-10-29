require "pry"

order = ""

while order != "no" do
	puts "Can I get you anything?"
	order = gets.chomp
	binding.pry
end

puts "Okay, bye!"
