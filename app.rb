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

# Rename cat to random-cat
get '/random-cat' do
  @name = ["Janet", "John"].sample
  erb :index
end

# Add named-cat add ?name=Kitty and the name is set to Kitty
# Note not quote marks!
get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb :index
end

