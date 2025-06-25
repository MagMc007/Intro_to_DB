CREATE TABLE Books
(
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INTEGER,
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)

);

CREATE TABLE Authors
(
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers
(
    customer_id INTEGER PRIMARY KEY, 
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT
);

CREATE TABLE Orders 
(
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER, 
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details
(
    orderdetailid INTEGER PRIMARY KEY,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)