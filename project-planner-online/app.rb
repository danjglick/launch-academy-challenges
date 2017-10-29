require "sinatra"
require "sinatra/reloader"
require_relative "config/application"

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
	@projects = Project.all
	erb :projects
end
