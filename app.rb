require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.get_name
    @player_2 = $player_2.get_name
    
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
 
    $game.attack(@player_2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
