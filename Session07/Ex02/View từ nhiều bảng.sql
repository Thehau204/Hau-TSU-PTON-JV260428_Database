use demo;
CREATE VIEW v_order_info AS
SELECT
    o.id AS order_id,
    o.order_date,
    c.name AS customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.id;
SELECT * FROM v_order_info;
