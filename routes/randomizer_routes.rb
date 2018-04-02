require 'sinatra'
require 'sinatra/reloader'
require './controllers/randomizer_controller'

get '/ping' do
  'Pong'
end

post '/randomizer' do
  request.body.rewind
  data = JSON.parse request.body.read
  RandoMizerController.mizer(data)
end
