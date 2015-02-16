require 'sinatra'
require 'csv'

get '/' do
  erb :index
end

get '/date' do
  erb :date
end
