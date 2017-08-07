require 'sinatra'
require 'sinatra/reloader'



random  = rand(100) 
number  = random
# message = ""




get '/' do
	erb :index, :locals   => {:message   => message}
	erb :index, :locals   => {:number    => number }
	guess = params['guess'].to_i 
	message = ""
	if guess > number
	 message = "too high"
	end
	
end

