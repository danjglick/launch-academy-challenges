knife_juggling = 2.1 + 0.77 + 5.0 + 1.0 + 3.0
torch_juggling = 6.0 + 3.5 + 7.0
hand_balancing = 2.0 + 1.0
human_blockhead = 0.75 + 0.43

puts "knife juggling:"
puts knife_juggling
puts "torch juggling:"
puts torch_juggling
puts "hand balancing:"
puts hand_balancing
puts "human_blockhead:"
puts human_blockhead

total = knife_juggling + torch_juggling + hand_balancing + human_blockhead
puts "total:"
puts total
average = total / 12
puts "average:"
puts average

puts "Can I have a volunteer? Great! What is your name? "
volunteer = gets.chomp
puts "Everyone, applaud for #{volunteer}. "
puts "#{volunteer}, what is your favorite number? "
favorite_num = gets.chomp
puts "My friend and I will juggle knives around #{volunteer} for #{favorite_num} seconds. "
