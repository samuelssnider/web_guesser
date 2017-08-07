require 'sinatra'
require 'sinatra/reloader'
require 'pry'



SECRET_NUMBER  = rand(100) 



get '/' do
	guess   = params['guess'].to_i if params['guess']
	unless params['cheat'] == "true"
		message = check_guess(guess, SECRET_NUMBER)
	else 
		message = "Hey <strong>cheater</strong>, the secret number is: #{SECRET_NUMBER}"
	end
	erb :index, :locals => {:message => message}	
end

def check_guess(guess, number)
	case guess
	when nil
		message = "<span id = 'start'>Guess my number (1-100)</span>" 
	when (number + 5)..105
		message = "<span id = 'wth'><em>Way</em> too high!</span>"
	when (number + 1)..(number + 5)
		message = "<span id = 'too-high'>Too high!</span>"
	when 0..(number - 5)
		message = "<span id = 'wtl'><em>Way</em> too low!</span>"
	when (number - 5)..(number - 1)
		message = "<span id = 'too-low'> Too low!</span>"
	when number
		message = "<div id = 'winner'>You got it right! <br> <br> The Secret number is <span id = 'secret-number'> #{guess}</span>! </div>"
	end
end

