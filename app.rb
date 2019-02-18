require 'sinatra'
set :session_secret, 'super secret'

get '/secret' do
  'Hello Message!'
end
