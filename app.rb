require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
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
    $new_game = Game.new
    $new_game.attack($player_2)
    redirect './play'
  end

  run! if app_file == $PROGRAM_NAME
end
