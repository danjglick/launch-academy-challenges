require "sinatra"
require "sinatra/reloader"
require "erb"
require "CSV"
require "pry"

set :bind, '0.0.0.0'

get "/" do
	redirect "/grocery-list"
end

get "/grocery-list" do
	@grocery_list = CSV.read("grocery_list.csv")
	erb :grocery_list
end

post "/grocery-list" do
	@item = params["item"]
	CSV.open("grocery_list.csv", "a", headers: true) do |csv|
		if !@item.to_s.strip.empty?
			csv << [@item]
		end
	end
	redirect "grocery-list"
end
