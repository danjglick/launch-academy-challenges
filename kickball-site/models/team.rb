require "pry"
require_relative "player"
require_relative "team_data"

class Team
	attr_reader :name
	
	@@teams = []

	def initialize(name)
		@name = name
		@players = []
		@@teams << self
	end

	def self.all
		@@teams
	end

	def players
		Player.all.each do |player|
			if player.team_name == @name
				@players << player
			end
		end
		@players
	end
end

###
# # populates @@players and @@teams
# TeamData::ROLL_CALL.each do |team_name, roster|
# 	Team.new(team_name)
# 	roster.each do |position, player_name|
# 		Player.new(player_name, position, team_name)
# 	end
# end

# puts Team.all








