require './models/user.rb'
get '/users/new' do
  email = params['email'] 
  existing_email = find_existing_email(email)
  erb :'users/new', locals: {
    existing_email: existing_email
  }
end
get '/users' do
  first_name = params['first_name']
  last_name = params['last_name']
  email = params['email']  
  password = params['password']
  newsletter = params['newsletter']

  existing_email = find_existing_email(email)
  
  if existing_email == false 
    create_user(first_name, last_name, email, password)
    if newsletter == '1'
     add_to_email_list(first_name,email) 
    end 
    redirect '/sessions/new'
  else 
    erb :'users/new', locals: {
      existing_email: existing_email
    }
  end
end 
