require 'sinatra'
require  'sinatra/reloader'


number = rand(0..100)
get '/' do
  guess = params["guess"]
  message = ""
  if guess then
    guess = guess.to_i
    if guess > number then
        message = "Too high. Your guess is #{guess}"
    elsif guess < number then
        message = "Too low. Your guess is #{guess}"
    else
        message = "Congratulations! Your guess #{guess} is equal #{number}"
    end
  end
  erb :index, :locals => { :number => number, :message => message }
end
