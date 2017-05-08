require 'sinatra'
require  'sinatra/reloader'

get '/' do
  "The secrete number is #{rand(0..10)}"
end
