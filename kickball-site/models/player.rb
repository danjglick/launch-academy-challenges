require "pry"

class Player
	attr_reader :name, :position, :team_name

	@@players = []

	def initialize(name, position, team_name)
		@name = name
		@position = position
		@team_name = team_name
		@@players << self
	end

	def self.all
		@@players
	end
end


