require "pry"

print "How difficult (easy/hard)? "
difficulty = gets.chomp

print "Guess a number from 1 to "
if difficulty == "easy"
	range = 10 
elsif difficulty == "hard"
	range = 20
end
puts range
rand_num = rand(range) + 1

binding.pry

score = 1
guess = (gets.chomp).to_i
while guess != rand_num do
	puts "Wrong, try again!"
	guess = (gets.chomp).to_i
	score += 1
end
puts "Correct! Your score is #{score}! Goodbye!"