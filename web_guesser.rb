require 'sinatra'

get '/' do
	random = rand(100)
	"The secret number is #{random}"
	"blah blah blah"
end
