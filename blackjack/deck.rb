class Deck
	attr_accessor :deck

	def initialize
		@values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
		@suits = ['spades', 'clubs', 'diamonds', 'hearts']
		@deck = get_deck
	end	

	def get_deck
		deck = []
		for value in @values
			for suit in @suits 
				deck << [value, suit]
			end
		end
		deck
	end
end
