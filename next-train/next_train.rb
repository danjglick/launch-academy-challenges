ask_time = true
while ask_time == true do
	print "Time you are leaving the office (ex. 1:15pm = 13.25): "
	leave_office = gets.chomp.to_f
	if (leave_office > 0) && (leave_office <= 24)
		ask_time = false
	else
		puts "That's not a time!"
	end
end

train_times = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

train_times.each_with_index do |train_time, count|
	if train_time > leave_office
		puts "Take Train #{count+1} leaving at #{train_time}"
		if count+1 == 13
			puts "
				***DON'T STOP...BELIEVIN'!***

				Just a small town girl
				Living in a lonely world
				She took the midnight train going anywhere
				Just a city boy
				Born and raised in South Detroit
				He took the midnight train going anywhere

				A singer in a smoky room
				A smell of wine and cheap perfume
				For a smile they can share the night
				It goes on and on and on and on

				Strangers waiting, up and down the boulevard
				Their shadows searching in the night
				Streetlights people, living just to find emotion
				Hiding, somewhere in the night. 
				end
				"
		end
		break
	end	  
end 
