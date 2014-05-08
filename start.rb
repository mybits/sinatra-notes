require 'sinatra'
require 'shotgun'

get '/' do
  "That's a test."
end

get '/about' do
    "Something about me."
end

get '/hello/:name' do
  "Hello #{params[:name]}! How are you?"
end

get '/more/*' do
  # That's a wildcard
  params[:splat]
end

get '/form' do
  erb :form
end

post '/form/' do
  "That was your message: '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  halt 404, "Sorry, that page doesn't exist!"
end

