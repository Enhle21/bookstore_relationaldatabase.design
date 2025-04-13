-- create database
USE BookStoreDB;

-- create table for book
CREATE TABLE book(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
publisher_id INT,
language_id INT,
price DECIMAL(10,2),
publication_year YEAR
);


-- Create table author
CREATE TABLE author(
author_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (100),
bio TEXT
);


-- Create table book_author
CREATE TABLE book_author(
book_id INT,
author_id INT,
PRIMARY KEY (book_id, author_id)
);

-- Create table book_language 
CREATE TABLE book_language(
language_id INT AUTO_INCREMENT PRIMARY KEY,
language_name VARCHAR(50)
);

-- Create publisher table
CREATE TABLE publisher(
publisher_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
address VARCHAR(255)
);

-- Create customer table
CREATE TABLE customer(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100)
);


-- Create address table
CREATE TABLE address(
address_id INT AUTO_INCREMENT PRIMARY KEY,
street VARCHAR(255),
city VARCHAR(100),
country_id INT
);


-- Create country table
CREATE TABLE country(
country_id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(100)
);


-- Create customer_address table
CREATE TABLE customer_address(
customer_id INT,
address_id INT,
status_id INT,
PRIMARY KEY (customer_id, address_id)
);


-- Create address_status table
CREATE TABLE address_status(
status_id INT AUTO_INCREMENT PRIMARY KEY,
status_description VARCHAR(50)
);


-- Create cust_order table
CREATE TABLE cust_order(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
status_id INT,
shipping_method_id INT
);


-- Create order_line table
CREATE TABLE order_line(
order_id INT,
book_id INT,
quantity INT,
PRIMARY KEY(order_id, book_id)
);


-- create table shipping_method
CREATE TABLE shipping_method(
method_id INT AUTO_INCREMENT PRIMARY KEY,
method_name VARCHAR(100),
cost DECIMAL(10,2)
);


-- Create table order_status
CREATE TABLE order_status(
status_id INT AUTO_INCREMENT PRIMARY KEY,
status_description VARCHAR (50)
);


-- Create table order_history 
CREATE TABLE order_history(
history_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
status_id INT,
status_date DATE
);