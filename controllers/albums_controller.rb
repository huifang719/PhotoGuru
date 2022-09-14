require './models/album.rb'
get '/albums/new' do
  # erb :'albums/new'
  images = all_images()

  erb :'albums/new', locals: {
    images: images
  }
end