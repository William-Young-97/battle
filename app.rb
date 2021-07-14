require 'sinatra/base'
require 'sinatra/reloader' 

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader  
  end


  get '/' do
    erb(:index)
  end

  run! if app_file == $0
  
  post '/names' do
    "" #Without quotes page 404s ???
    @player_1 = params[:player_1] 
    @player_2 = params[:player_2]
    erb(:play)
  end

end
