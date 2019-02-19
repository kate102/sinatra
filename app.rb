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
# Move the processing in here and not in the view
get '/cat' do
  @name = ["Janet", "John"].sample
  erb :index
end
