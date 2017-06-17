INSERT INTO menu (name, description, image)
VALUES
('Fettucine Carbonara','Fettucine with Carbonara Sauce','http://www.bakeplaysmile.com/wp-content/uploads/2015/05/Easy-Fettuccine-Carbonara-2.jpg'),
('Spahetti Bolognaise','Spaghetti with Bolognaise Sauce, topped with meatballs','http://i1.wp.com/www.scrambledchefs.com/wp-content/uploads/2016/03/Spaghetti-Bolognese-_-Scrambled-Chefs-1.gif?resize=760%2C507'),
('Escargot Au Lait','Snail with milk','http://images.lpcdn.ca/641x427/200904/16/64169-escargots-tempura-sauce-lait-coco.jpg') ,
('Ice Cream Sandwich','Bread filled with Vanilla Ice Cream','https://cdn2.bigcommerce.com/server2800/91692/products/470/images/3242/oatmeal_cream_WEB__26480__45773.1397680558.1280.1280.jpg?c=2'),
('Caesar Salad','Mix of Vegetables, dressed with special sauce','https://static01.nyt.com/images/2016/03/21/multimedia/recipe-lab-kale-caesar/recipe-lab-kale-caesar-superJumbo.jpg');
 
INSERT INTO ingredient (name, ingredient_path)
VALUES
('Vegetable','001'),
('Meat','002'),
('White Meat','002.001'),
('Red Meat','002.002'),
('Tomato','001.001'),
('Iceberg Lettuce','001.002'),
('Mushroom','003'),
('Snail','004'),
('Wheat','005'),
('Fettucine','005.001.001'),
('Wheat Flour','005.001'),
('Spaghetti','005.001.002'),
('Dairy','006'),
('Milk','006.001'),
('Cheese','006.002'),
('Ice Cream','006.003'),
('Bread','005.001.003');
 
INSERT INTO ingredient_menu (menu_id, ingredient_id)
VALUES
(1,10),
(1,15),
(1,7),
(1,3),
(2,4),
(2,5),
(2,12),
(2,15),
(3,8),
(3,14),
(5,5),
(5,6),
(4,16),
(4,17);
