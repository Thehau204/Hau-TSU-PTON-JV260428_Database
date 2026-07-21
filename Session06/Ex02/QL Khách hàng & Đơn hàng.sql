use demo;
CREATE TABLE customers(
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(255) NOT NULL,
     email VARCHAR(255) UNIQUE
);
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    price DOUBLE,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
CREATE TABLE categories1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);
CREATE TABLE products1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    price DOUBLE,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
/*Thêm 2 khách hàng mới vào bảng customers*/
INSERT INTO customers(name, email)
VALUE
('Nguyễn Văn A', 'vana@example.com'),
('Trần Thị B', 'thib@example.com');
/*Thêm dữ liệu mẫu cho categories và products*/
INSERT INTO categories(name)
values ('Laptop'), ('Điện thoại'), ('Máy ảnh');

INSERT INTO products1(name, price, category_id)
VALUES
('Macbook Air M3', 1200, 1),
('iPhone 15 Pro', 1500, 2),
('Sony A7 IV', 2000, 3);
/*thêm đơn hàng và chi tiết đơn hàng*/
INSERT INTO orders(customer_id, order_date)
VALUES
(1, '2024-01-10'),
(1, '2024-02-05'),
(2, '2024-03-12');
SET SQL_SAFE_UPDATES = 0;
INSERT INTO order_details(order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 1200),   
(1, 2, 1, 1500),   
(2, 3, 1, 2000), 
(3, 2, 2, 1500);   
SHOW CREATE TABLE order_details;
ALTER TABLE order_details
DROP FOREIGN KEY order_details_ibfk_2;
/*Liệt kê khách hàng có ít nhất 1 đơn hàng*/
SELECT distinct c.id, c.name, c.email
FROM customers c
INNER JOIN orders o ON  c.id = o.customer_id;
/* Tìm khách hàng chưa từng đặt đơn hàng nào*/
SELECT c.id, c.name, c.email
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL;
/*Tính tổng doanh thu theo từng khách hàng*/
SELECT c.name AS customer_name,
	SUM(od.quantity * od.price) AS total_revenue
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_details od ON o.id = od.order_id
GROUP BY c.id, c.name;
/*Xác định khách hàng đã từng mua sản phẩm có giá cao nhất*/
SELECT c.name AS customer_name, p.name AS product_name, p.price
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_details od ON o.id = od.order_id
JOIN products1 p ON od.product_id = p.id
WHERE p.price = (SELECT MAX(price) FROM products);
/*Hiển thị kdanh sách khách hàng + tổng số đơn hàng đã đặt */
SELECT c.name, 
       COUNT(o.id) AS total_orders
FROM customers c 
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name;
/*Hiển thị danh sách sản phẩm + số lượng đã bán*/
SELECT p.name,
       SUM(od.quantity) AS total_sold
FROM products p
LEFT JOIN order_details od ON p.id = od.product_id
GROUP BY p.id, p.name;

















