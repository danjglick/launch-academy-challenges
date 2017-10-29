require "pry"

print "Food amount? "
food_amount = gets.chomp
food_amount = food_amount.to_f

print "Tip percent as decimal? "
tip_percent = gets.chomp
tip_percent = tip_percent.to_f

print "Tip amount: "
tip_amount = food_amount * tip_percent
puts tip_amount

print "Total amount: "
total_amount = food_amount + tip_amount
puts total_amount