require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/base'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader  
  end

  get '/battle' do
    "Hello battle!"
  end

  run! if app_file == $0
end