DATABASE DESIGN & PROGRAMMING WITH SQL- BOOKSTORE PROJECT
GROUP MEMBERS: PALESA TSHABANGU - tshabangupalesa272@gmail.com
               MPHO NDLOVU - mphot528@gmail.com
               EMMANUAL MURENGI - elnutoh@gmail.com

1. Introduction
   This project involved designing and implementing a relational database system for a bookstore using MySQL.
   The goal was structure data efficiently to manage the bookstore's operations including books, authors, customers, orders, shipping, and more.

2. Objectives
   - Create a functional database schema for the bookstore.
   - Implement the database using MySQL.
   - Design a visual Entity-Relationship Diagram using Draw.io.
   - Enforce data integrity through primary and foreign keys.
   - Manage user roles and access.
   - Run sample queries to test and validate data relationships.
  
3. Tools and Technologies
   - MySQL: used to create the database schema, insert data, and perform queries.
   - Draw.io: used to visualize the database schema and relationships among tables.

4. Database Design Overview
   The database design follows the principles of normalization and includes 14 main tables:
   - book: contains informations about each book
   - author: stores details of authors.
   - book_author: manages the many-to-many relationship between books and authors.
   - book_language: lists the available languages.
   - publisher: contains publisher information.
   - customers: holds customer details
   - address: stores addresses for customers
   - customer_address: links customers to multiple addresses with a status.
   - address_status: describes address status(current, or old)
   - country: lists countries for address localization.
   - cust_order: contains customer order information
   - order_line: details the items in each order.
   - shipping_method: lists shipping options and their costs
   - order_status & order history: track and manage the lifecycle of an order
  ALL TABLES ARE CONNECTED USING FOREIGN KEY CONSTRAINTS TO MAINTAIN REFERENTIAL INTEGRITY
