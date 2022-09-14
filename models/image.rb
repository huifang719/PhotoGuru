def add_image(title,image_url,image_owner,author,description)
    run_sql("INSERT INTO image_album(title, img_url, image_owner,author,img_description) VALUES($1, $2, $3, $4, $5)", [title, image_url, image_owner,author,description])
end 