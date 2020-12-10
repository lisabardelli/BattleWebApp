
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get "/" do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2]= params[:player_2]
    redirect '/play'
  end
  get '/play' do
    
    erb(:play)
  end

  run! if app_file == $0

end





