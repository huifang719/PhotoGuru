require './models/image.rb'


get '/albums/new' do
  uploader = session['user_id']
  images = all_images(uploader)
  
  erb :'albums/new', locals: {
    images: images
  }
end 

