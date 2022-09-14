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
require './controllers/images_controller'


get '/' do
  images = all_images()
  erb :'index', locals: {
    images: images
  }
end

get '/contact' do
  erb :contact
end

get '/about' do
  erb :about
end 

get '/tutorials/new' do
  erb :'tutorials/new'
end

