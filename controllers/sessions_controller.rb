get '/sessions/new' do
  email = params['email']
  user = find_user_by_email(email)
  erb :'sessions/new', locals: {
    user:user
  }
end

get '/sessions' do
  email = params['email']
  password = params['password']

  user = find_user_by_email(email)
  if user && BCrypt::Password.new(user['password_digest']) == password
  session['user_id'] = user['id']

    redirect '/'
  else 
    erb :'sessions/new', locals: {
      user:user
    }
  end 
end

delete '/sessions' do
  session['user_id'] = nil
  redirect '/'
end  