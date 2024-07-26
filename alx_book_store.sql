CREATE DATABASE IF NOT EXISTS alx_book_store ;

CREATE TABLE Authors(
    author_id INT NOT NULL,
  	PRIMARY KEY(author_id),
    author_name VARCHAR(215)
);

CREATE TABLE Books(
    book_id AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
  	author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
  	FOREIGN KEY (author_id) REFERENCING Authors(author_id)
);

CREATE TABLE Customers(
    customer_id INT,
    PRIMARY KEY(customer_id),
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT NOT NULL
);

CREATE TABLE Orders(
    order_id AUTO_INCREMENT PRIMARY KEY,
  	order_date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCING Customers(customer_id)
    
);

CREATE TABLE Order_details(
    order_id INT,
  	book_id INT,
  	quantity DOUBLE NOT NULL,
    FOREIGN KEY order_id REFERENCING Orders(order_id),
    FOREIGN KEY book_id REFERENCING Books(book_id)
);