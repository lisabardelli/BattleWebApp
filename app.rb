
require 'sinatra/base'

class Battle < Sinatra::Base
  get "/" do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:names)
  end

  run! if app_file == $0

end







#When running a Ruby file use the run method to run it in the localhost. 

