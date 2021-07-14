require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/base'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader  
  end

  get '/battle' do
    "Testing infrastructure working!"
  end

  run! if app_file == $0


  get '/battle' do
    @name = params[:name] 
    erb(:index)
  end

end