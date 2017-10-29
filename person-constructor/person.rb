class Person
	attr_accessor :first_name, :middle_name, :last_name

	def initialize(first_name, middle_name = nil, last_name = nil)
		if middle_name.nil? && last_name.nil?
			full_name = first_name.split
			@first_name = full_name[0]
			if full_name.length == 2
				@last_name = full_name[1]
			elsif full_name.length == 3
				@middle_name = full_name[1]
				@last_name = full_name[2]
			end
		elsif middle_name.nil?
				
		end
	end



