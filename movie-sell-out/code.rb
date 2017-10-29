require 'pry'

class Theater
	def initialize(num_seats, num_patrons = 0)
		@num_seats = num_seats
		@num_patrons = num_patrons
	end

	def admit(num_to_admit = 1)
		@num_patrons += 1
		if @num_patrons > @num_seats
			puts 'over capacity! denied!'
			@num_patrons -= 1
		end
	end

	def at_capacity
		if @num_patrons == @num_seats
			return true
		else
			return false
		end
	end

	def record_walk_outs(num_walked_out)
		@num_patrons -= num_walked_out
	end
end

