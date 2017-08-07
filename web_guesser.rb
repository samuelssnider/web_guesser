require 'sinatra'
require 'sinatra/reloader'



random = rand(100) 
number = random


get '/' do
	erb :index, :locals => {:number => number}
end

