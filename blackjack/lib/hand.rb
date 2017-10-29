class Hand
  attr_accessor :cards, :score

  def initialize(deck)
    @cards = []
    @score = 0
    @deck = deck
    deal_card
    deal_card
  end

  def deal_card
    card = @deck.sample   
    @cards.push(card)
    @deck.delete(card)
    if ["jack", "queen", "king"].include?(card[0])
    	@score += 10
    elsif card[0] == "ace"
    	if @score + 11 > 21
    		@score += 1
    	else
    		@score += 11
    	end
    else
    	@score += card[0]
    end
  end
end