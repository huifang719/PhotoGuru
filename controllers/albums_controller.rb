require './models/image.rb'
get '/albums/new' do
  images = all_images()
  
  erb :'albums/new', locals: {
    images: images
  }
end