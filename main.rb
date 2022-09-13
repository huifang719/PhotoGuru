require 'sinatra'
require 'httparty'
require 'bcrypt'
require './db/db'
require 'dotenv/load'

enable :sessions

require './controllers/users_controller'
require './controllers/sessions_controller'
require './controllers/albums_controller'
require './helpers/sessions_helper'
require './controllers/messages_controller'


get '/' do
  erb :index
end

get '/contact' do
  erb :contact
end

get '/about' do
  erb :about
end 

