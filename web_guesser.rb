require 'sinatra'
require 'sinatra/reloader'

get '/' do
	random = rand(100)
	"THE secret NUMBER is #{random}"
end
