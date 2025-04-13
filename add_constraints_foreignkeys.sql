-- table book (publisher, book_language)
ALTER TABLE book
ADD CONSTRAINT fk_book_publisher
FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
ADD CONSTRAINT fk_book_language
FOREIGN KEY (language_id) REFERENCES book_language(language_id);

-- table book_author(book, author)
ALTER TABLE book_author
ADD CONSTRAINT fk_book_author_book
FOREIGN KEY (book_id) REFERENCES book(book_id),
ADD CONSTRAINT fk_author_author
FOREIGN KEY (author_id) REFERENCES author(author_id);

-- table address(country)
ALTER TABLE address
ADD CONSTRAINT fk_address_country
FOREIGN KEY (country_id) REFERENCES country(country_id);

-- customer_address (customer, address, address_status)
ALTER TABLE customer_address
ADD CONSTRAINT fk_customer_address_customer
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
ADD CONSTRAINT fk_customer_address_address
FOREIGN KEY (address_id) REFERENCES address(address_id),
ADD CONSTRAINT fk_customer_address_status
FOREIGN KEY (status_id) REFERENCES address_status(status_id);

-- cust_order (customer, order_status, shipping_method)
ALTER TABLE cust_order
ADD CONSTRAINT fk_order_customer
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
ADD CONSTRAINT fk_order_status
FOREIGN KEY (status_id) REFERENCES order_status(status_id),
ADD CONSTRAINT fk_order_shipping
FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(method_id);

-- order_line (cust_order, book)
ALTER TABLE order_line
ADD CONSTRAINT fk_order_line_order
FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
ADD CONSTRAINT fk_order_line_book
FOREIGN KEY (book_id) REFERENCES book(book_id);

-- order_history (cust_order, order_status)
ALTER TABLE order_history
ADD CONSTRAINT fk_order_history_order
FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
ADD CONSTRAINT fk_order_history_status
FOREIGN KEY (status_id) REFERENCES order_status(status_id);