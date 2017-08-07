require 'sinatra'
require 'sinatra/reloader'



random  = rand(100) 
number  = random
message = ""



get '/' do
	erb :index, :locals   => {:message   => message}
	erb :index, :locals   => {:number    => number }
	
end

