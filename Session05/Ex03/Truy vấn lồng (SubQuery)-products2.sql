SELECT * FROM ddl_sql.products2;
INSERT INTO products2 (product_id, product_name, category, price)
VALUES
('P001', 'Laptop Dell XPS', 'Electronics', 25000000),
('P002', 'iPhone 14 Pro', 'Electronics', 32000000),
('P003', 'Samsung Galaxy S23', 'Electronics', 28000000),
('P004', 'Bàn làm việc gỗ', 'Furniture', 5000000),
('P005', 'Ghế văn phòng Ergonomic', 'Furniture', 7000000),
('P006', 'Tủ gỗ 3 ngăn', 'Furniture', 4500000),
('P007', 'Áo thun Uniqlo', 'Clothing', 300000),
('P008', 'Quần jeans Levi’s', 'Clothing', 1200000),
('P009', 'Giày Nike Air Max', 'Clothing', 3500000),
('P010', 'MacBook Pro M2', 'Electronics', 42000000);
/*1) Hiển thị sản phẩm có giá cao hơn giá
 trung bình của tất cả sản phẩm*/
 SELECT 
    product_id,
    product_name,
    category,
    price
FROM products2
WHERE price > (
    SELECT AVG(price) FROM products2
);
SELECT * FROM products2;

/*2) Hiển thị sản phẩm có giá cao nhất trong từng loại sản phẩm*/
SELECT 
    product_id,
    product_name,
    category,
    price
FROM products2
WHERE price = (
    SELECT MAX(price)
    FROM products2 AS p2
    WHERE p2.category = products2.category
);

/*3) Hiển thị các sản 
phẩm thuộc loại có ít nhất một sản phẩm giá trên 20.000.000*/
SELECT 
    product_id,
    product_name,
    category,
    price
FROM products2
WHERE category IN (
    SELECT category
    FROM products2
    WHERE price > 20000000
);

