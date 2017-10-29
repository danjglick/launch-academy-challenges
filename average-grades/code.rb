def average(grades)
	sum = 0
	grades.each do |grade|
		sum += grade
	end 
	sum.to_f / grades.size
end

def letter_grade(average)
	if average >= 90
		"A"
	elsif average >= 80
		"B"
	elsif average >= 70
		"C"
	elsif average >= 60
		"D"
	else
		"F"
end

def rankings(students)
	students.each_with_index do |student, index|
		puts "#{index + 1}. #{student}"
	end
end

