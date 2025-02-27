SELECT * FROM products;
SELECT  * FROM customers;
SELECT * FROM orders;
SELECT AVG(PRICE) FROM products;

SELECT *  FROM products where price > (SELECT AVG(PRICE) FROM products);

SELECT orders.customer_id, count(*) FROM orders GROUP BY customer_id ORDER BY customer_id;

-- =================== SUB QUERY IN FROM CLAUSE ==========================
SELECT SUM(number_of_order_per_customer.count) / COUNT(*) AS average_order_per_customer
FROM (
         SELECT orders.customer_id, count(*) FROM orders GROUP BY customer_id
     ) as number_of_order_per_customer;

-- ================  SAME AS ABOVE =============
SELECT AVG(number_of_order_per_customer.count)
FROM (
         SELECT orders.customer_id, count(*) FROM orders GROUP BY customer_id
     ) as number_of_order_per_customer;