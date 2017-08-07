require 'sinatra'
require 'sinatra/reloader'



SECRET_NUMBER  = rand(100) 



get '/' do
	guess   = params['guess'].to_i
	message = check_guess(guess, SECRET_NUMBER)
	erb :index, :locals => {:message => message}	
end

def check_guess(guess, number)
	case guess
	when (number + 5)..105
		message = "Way too high!"
	when (number + 1)..(number + 5)
		message = "Too high!"
	when 0..(number - 5)
		message = "Way too low!"
	when (number - 5)..(number - 1)
		message = "Too low!"
	when number
		message = "You got it right! \n The Secret number is #{guess}"
	end
end

