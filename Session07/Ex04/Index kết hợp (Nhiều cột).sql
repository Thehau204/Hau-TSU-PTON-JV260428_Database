use ddl_sql;
CREATE INDEX idx_products_category_price
ON products2(category, price);
SHOW INDEX FROM products2;
