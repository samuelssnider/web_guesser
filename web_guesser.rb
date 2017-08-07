require 'sinatra'
require 'sinatra/reloader'



random = rand(100) 
number = random


get '/' do
	"the secret number #{number}"
end

