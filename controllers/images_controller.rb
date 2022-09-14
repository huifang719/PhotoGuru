require './models/image.rb'
get '/images/new' do
    erb :'images/new'
end
post '/images' do
    title = params['title']
    image_url = params['image_url']
    image_owner = ['user_id']
    author = params['author']
    description = params['description']
    
    add_image(title,image_url,image_owner,author,description)

    redirect '/albums/new'
end

get '/images/:id/edit' do
    id = params['id']
    image = get_image(id)
    erb :'image/edit', locals: {
        image: image
    }
end


delete '/images/:id' do
    id = params['id']
    delete_image(id)
    redirect '/albums/new'
end
