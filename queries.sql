-- 1. Список клієнтів із контактними даними, відсортований за прізвищем.
SELECT customer_id,
   first_name,
   last_name,
   phone,
   email
FROM customers
  ORDER BY last_name ASC;
-- 2. Список товарів із цінами, відсортований від найвищої ціни до найнижчої.
SELECT product_id,
    product_name,
    price
FROM products
   ORDER BY price DESC;
-- 3. Список очікуваних замовлень із датою та ID клієнта, відсортований за датою за спаданням.
SELECT order_id,
   customer_id,
   order_date,
   order_status
FROM orders
   WHERE order_status = 'Pending'
     ORDER BY order_date DESC;
-- 4. Список замовлень із датою, статусом та ім'ям і прізвищем клієнта.
SELECT order_id,
    order_date,
    order_status,
    first_name,
    last_name
FROM orders
   JOIN customers ON orders.customer_id = customers.customer_id;
-- 5. Розрахунок загальної вартості товарів для кожного замовлення.
SELECT order_id,
   SUM(quantity * price)
FROM order_items
   GROUP BY order_id;
-- 6. Розрахунок загальної суми кожного замовлення з ім'ям і прізвищем клієнта.
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
-- 7. Підрахунок кількості замовлень для кожного клієнта.
SELECT customer_id,
   COUNT(order_id)
FROM orders
   GROUP BY customer_id;
-- 8. Пошук клієнтів, які мають більше одного замовлення.
SELECT customer_id,
   COUNT(order_id)
FROM orders
   GROUP BY customer_id HAVING COUNT(order_id) > 1
;
-- 9. Обчислення середньої ціни товарів.
SELECT AVG(price) FROM products;
-- 10. Визначення максимальної та мінімальної ціни товарів.
SELECT MAX(price), MIN(price) FROM products;
-- 11. Підрахунок кількості замовлень для кожного клієнта з його ім'ям і прізвищем.
SELECT first_name,
    last_name,
    COUNT(order_id)
FROM customers
    JOIN orders ON orders.customer_id =
     customers.customer_id
GROUP BY orders.customer_id;
-- 12. Пошук клієнтів із більш ніж одним замовленням із зазначенням імені, прізвища та кількості замовлень.
SELECT first_name,
    last_name,
    COUNT(order_id)
FROM customers
    JOIN orders ON orders.customer_id =
     customers.customer_id
GROUP BY orders.customer_id
   HAVING COUNT(order_id) > 1;
