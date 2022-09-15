def add_image(title,image_url,image_owner,author,description)
    run_sql("INSERT INTO image_album(title, img_url, image_owner,author,img_description) VALUES($1, $2, $3, $4, $5)", [title, image_url, image_owner,author,description])
end 

def get_image(id)
    image = run_sql("SELECT * FROM image_album WHERE id = $1",[id])[0]
end 
def update_image(id, title,image_url,author,description)
    run_sql("UPDATE image_album SET title = $2, img_url = $3, author = $4, img_description = $5 WHERE id =$1",[id, title,image_url,author,description])
end 

def delete_image(id)
    run_sql("DELETE FROM image_album WHERE id= $1",[id])
end 

def all_images(uploader)
    run_sql("SELECT * FROM image_album WHERE image_owner= $1",[uploader])
end 

