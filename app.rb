require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello Kate !'
end

get '/secret' do
  'Hello Message!'
end

# Views
# Strip out the html and but in embedded ruby file
get '/cat' do
  erb(:index)
end
