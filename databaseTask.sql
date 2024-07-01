-- first access the database
USE inventoryDB;

CREATE TABLE products(
   id INT PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   description TEXT NOT NULL,
   price DECIMAL(10,2) NOT NULL,
   quantity INT NOT NULL,
   category VARCHAR(255) NOT NULL
);

-- Value inserting 
INSERT INTO products(name,description,price,quantity,category) VALUES 
("Book","A book on Artificial Intelligence and its Applications",500.00,50,"Academics"),
("Calculator","A calculator by ORPAT Company",300.00,20,"Electronics"),
("Laptop","A Lenovo Laptop of i9 generation processor",99000.99,10,"Electronics"),
("Phone","An iPhone 13 ",73000.99,15,"Electronics"),
("KeyBoard","A mechanical keyboard ",999.00,30,"Electronics"),
("PenDrive","A sandisk PenDrive",1599.00,20,"Electronics"),
("WoodenTable","A beautifully crafted wooden table ",2599.00,10,"Furniture"),
("WoodenChair","A beautifully crafted wooden chair",1999.00,20,"Furniture"),
("Beadsheet","A beautiful single-bead BeadSheet made from pure silk ",2000.00,10,"Textile"),
("TableCloth","A beautiful table cloth for wooden tables",500.00,60,"Textile");

-- getting all the products
SELECT * FROM products;

-- getting all the products which are under a specific amount
SELECT * FROM products WHERE price < 1000;

-- getting all the products which are above a specific amount 
SELECT * FROM products WHERE price > 1000;

-- getting all the products which have more quantity than a particular specified stock quantity
SELECT * FROM products where quantity > 20;

-- updating price
UPDATE products SET price = 2777.00 WHERE quantity = 20 OR price=1000;

-- deleting a product
DELETE FROM products WHERE quantity=15;

