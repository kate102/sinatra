require 'sinatra'
set :session_secret, 'super secret'

get '/secret' do
  'Hello Message!'
end

require 'sinatra'
get '/cat' do
  erb(:index)
end
