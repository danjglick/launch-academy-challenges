def greet(name, language = :English)
	if language == :English
		greeting = ["Hi", "Yo", "Hey", "Howdy"].sample
	elsif language == :Spanish
		greeting = "Hola"
	elsif language == :Italian
		greeting = "Ciao"
	elsif language == :French
		greeting = "Bonjour"
	end
	puts "#{greeting} #{name}"
end	
