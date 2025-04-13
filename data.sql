USE BookStoreDB;

-- insert data into the tables
-- insert book languages
INSERT INTO book_language (language_name) VALUES
('English'),
('Afrikaans'),
('Zulu'),
('French'),
('Spanish');

-- insert data into Authors table
INSERT INTO author (name, bio) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('Chinua Achebe', 'Nigerian novelist and author of "Things Fall Apart".'),
('George Orwell', 'English novelist and essayist, author of "1984".');


-- insert data into customers table
INSERT INTO customer (name, email) VALUES
('Joseph Martins', 'j.martins@gmail.com'),
('Rose Kingston', 'r.kingston@gmail.com'),
('Christopher Jacks', 'c.jacks@mail.com'),
('Adelite Khoma', 'a.khoma@mail.com');

-- insert data into order table

-- insert data into countries table
INSERT INTO country(country_name) VALUES
('South Africa'),
('United Kingdom'),
('Nigeria'),
('Kenya');

-- insert data into addresses table
INSERT INTO address (street, city, country_id) VALUES
('123 Longstreet', 'Cape Town', 1),
('45 Oxford Road', 'London', 2),
('12 Lagos Way', 'Lagos', 3),
('32 Jera Way', 'Kenya', 4);

-- insert data into address status
INSERT INTO address_status (status_description) VALUES
('Current'),
('Old'),
('Old'),
('Current');


-- insert data into shipping method table
INSERT INTO shipping_method (method_name, cost) VALUES
('Standard Shipping', 50.00),
('Express Shipping', 120.00),
('Express Shipping', 150.00),
('Standard Shipping', 50.00);

-- insert data into order statuses table
INSERT INTO order_status (status_description) VALUES
('Shipped'),
('Pending'),
('Shipped'),
('Delivered');

