def create_user(first_name, last_name, email, password)
    password_digest = BCrypt::Password.create(password)
  
    run_sql("INSERT INTO users(first_name, last_name, email, password_digest) VALUES($1, $2, $3, $4)", [first_name, last_name, email, password_digest])
end

def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1", [email])

    if users.to_a.count > 0
        users[0]
    else 
        nil
    end 
end 

def find_user_by_id(id)
    run_sql("SELECT * FROM users WHERE id = $1",[id])[0]
end 

def add_to_email_list(first_name,email)
    run_sql("INSERT INTO email_list(first_name, email) VALUES($1, $2)", [first_name, email])
end
 
def find_existing_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1", [email])
    if users.to_a.count> 0
        existing_email = true 
    else 
        existing_email = false 
    end 
end 