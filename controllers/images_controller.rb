post '/images' do
    title = params['title']
    image_url = params['image_url']
    author = params['author']
    description = params['description']
  
    add_image(title,image_url,author,description)

    redirect '/'
end
