def print_grid(board)
	board.each_with_index do |row, row_index|
		row.each_with_index do |gamepiece, column_index|
			if gamepiece.nil?
				gamepiece = " "
			end
			if column_index < 2
				print " #{gamepiece} |"
			else
				print " #{gamepiece} "
			end
		end
		if row_index < 2
			puts
			puts "-" * 11
		end
	end
end

