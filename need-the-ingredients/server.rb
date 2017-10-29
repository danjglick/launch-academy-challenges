require 'sinatra'
require 'sinatra/reloader'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  @ingredients = File.readlines('ingredients.txt')
  erb :index
end

post '/ingredients' do
  ingredient = param['ingredient']

  File.open('ingredients.txt', 'a') do |file|
    file.puts(ingredient)
  end

  redirect '/'
end
