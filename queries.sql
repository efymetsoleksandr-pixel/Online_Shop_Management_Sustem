SELECT customer_id,
   first_name,
   last_name,
   phone,
   email
FROM customers
  ORDER BY last_name ASC;
SELECT product_id,
    product_name,
    price
FROM products
   ORDER BY price DESC;
SELECT order_id,
   customer_id,
   order_date,
   order_status
FROM orders
   WHERE order_status = 'Pending'
     ORDER BY order_date DESC;
SELECT order_id,
    order_date,
    order_status,
    first_name,
    last_name
FROM orders
   JOIN customers ON orders.customer_id = customers.customer_id;
SELECT order_id,
   SUM(quantity * price)
FROM order_items
   GROUP BY order_id;
SELECT orders.order_id,
   customers.first_name,
   customers.last_name,
   SUM(order_items.quantity * order_items.price) AS total_amount
FROM order_items
   JOIN orders ON order_items.order_id =
orders.order_id
   JOIN customers ON orders.customer_id =
    customers.customer_id
    GROUP BY orders.order_id;
SELECT customer_id,
   COUNT(order_id)
FROM orders
   GROUP BY order_id;
SELECT customer_id,
   COUNT(order_id)
FROM orders
   GROUP BY customer_id HAVING COUNT(order_id) > 1
;

SELECT AVG(price) FROM products;
SELECT MAX(price), MIN(price) FROM products;
SELECT first_name,
    last_name,
    COUNT(order_id)
FROM customers
    JOIN orders ON orders.customer_id =
     customers.customer_id
GROUP BY orders.customer_id;
SELECT first_name,
    last_name,
    COUNT(order_id)
FROM customers
    JOIN orders ON orders.customer_id =
     customers.customer_id
GROUP BY orders.customer_id
   HAVING COUNT(order_id) > 1;
