CREATE EXTENSION ltree;
 
CREATE TABLE category(
  id SERIAL PRIMARY KEY,
  name VARCHAR(75) NOT NULL,
  category_path ltree
);
 
CREATE INDEX category_category_path_idx ON category USING GIST (category_path);
 
CREATE TABLE ingredient(
  id SERIAL PRIMARY KEY,
  name VARCHAR(75) NOT NULL,
  ingredient_path ltree
);
 
CREATE INDEX ingredient_ingredient_path_idx ON ingredient USING GIST (ingredient_path);
 
 
CREATE TABLE menu(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  image TEXT
);
 
CREATE TABLE category_menu(
  id SERIAL PRIMARY KEY,
  category_id INT REFERENCES category,
  menu_id INT REFERENCES menu
);
 
CREATE TABLE ingredient_menu(
  id SERIAL PRIMARY KEY,
  ingredient_id INT REFERENCES ingredient,
  menu_id INT REFERENCES menu
);