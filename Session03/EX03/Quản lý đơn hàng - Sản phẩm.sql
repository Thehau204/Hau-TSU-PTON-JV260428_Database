CREATE TABLE orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    OrderDate DATE,
    CustomerName VARCHAR(100)
);

CREATE TABLE products2 (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE order_items (
    OrderID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);
