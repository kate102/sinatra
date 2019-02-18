require 'sinatra'
set :session_secret, 'super secret'

get '/secret' do
  'Hello Message!'
end

get '/cat' do
  "<div>
    <img src='http://bit.ly/1eze8aE'>
   </div>"

end
