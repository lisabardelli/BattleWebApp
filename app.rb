require 'sinatra/base'  


class Battle < Sinatra::Base  
    get '/' do
        "Testing infrastructure working!"
    end 

    run! if app_file == $0
end  




#When running a Ruby file use the run method to run it in the localhost. 

