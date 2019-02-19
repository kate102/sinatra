require 'sinatra'
set :session_secret, 'super secret'

  post ‘/form’ do
    @username = params[:username]
    puts params
    erb :form
  end
