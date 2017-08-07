require 'sinatra'
require 'sinatra/reloader'



random  = rand(100) 
number  = random




get '/' do
	guess = params['guess']
	erb :index, :locals   => {:number  => number }
	erb :index, :locals   => {:guess   => guess  }


	
end

