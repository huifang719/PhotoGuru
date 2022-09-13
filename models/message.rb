def create_message(first_name,last_name,email,msg) 
    run_sql("INSERT INTO message_bank(first_name, last_name, email,msg) VALUES($1, $2, $3, $4)", [first_name,last_name, email, msg])
end