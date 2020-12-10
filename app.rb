
require 'sinatra/base'
require_relative './lib/player.rb'


class Battle < Sinatra::Base
  enable :sessions
  get "/" do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end
  get '/play' do
    
    erb(:play)
  end
  post '/player1attack' do
    $player_1.attack($player_2)
    erb(:player1attack)
  end 

  run! if app_file == $0

end





