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
