require 'sinatra/base'

class Battle < Sinatra::Base
  get "/" do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:play)
  end

  run! if app_file == $0

end


