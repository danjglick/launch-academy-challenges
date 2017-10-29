require_relative "deck"
require_relative "hand"

class Game
	attr_accessor :player, :dealer
	def initialize
		@deck = Deck.new.deck
		@player = Hand.new(@deck)
		@dealer = Hand.new(@deck)
	end

	def get_scores
		puts "Your cards: #{@player.cards.inspect}"
		puts "Dealer's cards: #{@dealer.cards.inspect}"
		hit = true
		while hit == true
			puts "Your score is #{@player.score}. Would you like to hit or stay? (h/s)"
			hit = gets.chomp
			if hit == "s"
				hit = false
			else
				hit = true
				@player.deal_card
			end
		end
		while @dealer.score.between?(0,16) 
			@dealer.deal_card
		end
	end

	def get_winner(player, dealer)
		puts "You got #{player}. Dealer got #{dealer}." 
		if player == dealer || (player > 21 && dealer > 21)
			puts "You tied!"
		elsif dealer > 21 || (dealer < player && player < 22)
			puts "You win!"
		elsif player > 21 || (player < dealer && dealer < 22)
			puts "Dealer wins!"
		end 
	end
end