require_relative "game"

game = Game.new
game.get_scores
game.get_winner(game.player.score, game.dealer.score)















