require "sinatra"
require "sinatra/reloader"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

# populate @@players and @@teams
TeamData::ROLL_CALL.each do |team_name, roster|
	Team.new(team_name)
	roster.each do |position, player_name|
		Player.new(player_name, position, team_name)
	end
end

get "/" do
	@teams = Team.all
	erb :teams
end

get "/:team" do
	@team_players = []
	@team_name = params["team"]
	Player.all.each do |player|
		if player.team_name == params["team"].to_sym
			@team_players << player
		end
	end
	erb :team_players
end





