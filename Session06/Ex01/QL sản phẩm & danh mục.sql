use demo;
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
INSERT INTO categories(name)
VALUES
('Laptop'),
('Điện thoại'),
('Máy ảnh');
/*Thêm 3 sản phẩm mới vào bảng products*/
INSERT INTO products(name, price, category_id)
VALUES
('Macbook Air M3', 1200, 1),
('iPhone 15 Pro', 1500, 2),
('Sony A7 IV', 2000, 3);
/*Cập nhập giá của 1 sản phẩm */
SET SQL_SAFE_UPDATES = 0;
UPDATE products
SET price = 1600
WHERE name = 'iPhone 15 Pro';
/*Xóa 1 sản phẩm*/
DELETE FROM products
WHERE name = 'Macbook Air M3';
/*Hiển thị tất cả sản phẩm, sắp xếp thoeo giá giảm dần*/
SELECT p.id, p.name, p.price, c.name AS category_name
FROM products p
JOIN categories c ON p.category_id = c.id
ORDER BY p.price DESC;
/*Thống kê số lượng sản phẩm theo từng danh mục (GROUP BY)*/
SELECT c.name AS category_name,
       COUNT(p.id) AS total_products
FROM categories c
LEFT JOIN products p ON p.category_id = c.id
GROUP BY c.id, c.name;
