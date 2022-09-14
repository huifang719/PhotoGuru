require './models/image.rb'
get '/images/new' do
    erb :'images/new'
end
post '/images' do
    title = params['title']
    image_url = params['image_url']
    # --image_owner = ['user_id']
    author = params['author']
    description = params['description']
    
    add_image(title,image_url,image_owner,author,description)

    redirect '/albums/new'
end
