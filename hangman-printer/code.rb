def print_puzzle(word, guessed = [])
	word.each_char do |char|
		if guessed.include?(char)
			print "#{char} "
		else
			print "_ "
		end
	end
end

print_puzzle("dolphin", ["d", "l", "x"])