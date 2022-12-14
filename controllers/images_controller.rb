require './models/image.rb'
get '/images/new' do
    erb :'images/new'
end
post '/images' do
    title = params['title']
    image_url = params['image_url']
    image_owner = session['user_id']
    author = params['author']
    description = params['description']
    go_public = params['go_public']
    if go_public == '1'
        add_image(title,image_url,image_owner,author,description)
        add_image_to_public(title,image_url,author,description)
        redirect '/albums/new'
    else
        add_image(title,image_url,image_owner,author,description)
        redirect '/albums/new'
    end 
    
end

get '/images/:id/edit' do
    id = params['id']
    image = get_image(id)
    erb :'images/edit', locals: {
        image: image
    }
end
put '/images/:id' do 
    id = params['id']
    title = params['title']
    image_url = params['image_url']
    author = params['author']
    description = params['description']
  
    update_image(id,title,image_url,author,description)
    
    redirect '/albums/new'
end 

delete '/images/:id' do
    id = params['id']
    delete_image(id)
    redirect '/albums/new'
end


