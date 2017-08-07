require 'sinatra'
require 'sinatra/reloader'

get '/' do
	random = rand(100)
	"THE SECRET NUMBER is #{random}"
end
