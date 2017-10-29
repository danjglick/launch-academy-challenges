require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require '../models/Article.rb'
require 'pry'

require_relative 'models/contact'
also_reload 'models/contact'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  binding.pry
  @contacts = Contact.all
  erb :index
end
