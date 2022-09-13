CREATE DATABASE photo_guru_db;
\c photo_guru_db;
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password_digest TEXT
);

CREATE TABLE email_list(
  id SERIAL PRIMARY KEY,
  first_name TEXT, 
  email TEXT
);

CREATE TABLE message_bank(
  id SERIAL PRIMARY KEY,
  first_name TEXT, 
  last_name TEXT,
  email TEXT,
  msg TEXT
);

CREATE TABLE personal_album(
  id SERIAL PRIMARY KEY,
  title TEXT, 
  img_description TEXT,
  author TEXT,
  img_url TEXT
);