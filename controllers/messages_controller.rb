require './models/message.rb'
post '/messages' do
    first_name = params['first_name']
    last_name = params['last_name']
    email = params['email']
    msg = params['message']
    create_message(first_name,last_name,email,msg) 
    redirect '/'
end