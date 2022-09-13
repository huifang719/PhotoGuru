require './models/user.rb'
get '/users/new' do
  erb :'users/new'
end
get '/users' do
  first_name = params['first_name']
  last_name = params['last_name']
  email = params['email']  
  password = params['password']
  newsletter = params['newsletter']
  create_user(first_name, last_name, email, password)
  redirect '/'
end