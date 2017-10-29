require "pry"

scoresheet = [[5, 7], [4, 5], [3, 3], [4, 4], [4, 4], [3, 2], [4, 5], [5, 5], [4, 5], [5, 7], [4, 4], [4, 4], [3, 3], [4, 5], [4, 5], [4, 4], [3, 3], [5, 6]]

stroke_total = 0
scoresheet.each do |i|
	stroke_total += i[1]
	# binding.pry
end
puts "Total Strokes: #{stroke_total}"

par_total = 0
scoresheet.each do |i|
	par_total += i[0]
end
puts "Total Par: #{par_total}"

final_score = stroke_total - par_total
puts "You were #{final_score} over par."