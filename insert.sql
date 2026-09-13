INSERT INTO customers (
    first_name, last_name, phone, email)
VALUES ('Микола', 'Мартинов', '+380364228118', 'martyn@ukr.net'),
    ('Іван', 'Петров', '+380994438125', 'petyia@gmail.com'),
    ('Катерина', 'Іванішина', '+380443845555', 'kateryna88@gmail.com');
INSERT INTO products (
    product_name, price)
VALUES ('ноутбук', 38499.99),
    ('бездротові_навушники', 3549.99),
    ('принтер', 5789.49)
;
INSERT INTO couriers (
    first_name, last_name, phone)
VALUES ('Валерій', 'Чиж', '+380632139591'),
   ('Андрій', 'Мироник', '+380966643564'),
   ('Сергій', 'Семенюк', '+380936899876');
INSERT INTO orders (customer_id, order_date, order_status
    )
VALUES(1, '2026-02-21', 'Shipping'),
     (2, '2026-04-12', 'Pending'),
     (3, '2026-06-28', 'Dellivered');
INSERT INTO order_items (
    order_id, product_id, quantity, price)
VALUES (1, 2, 2, 2 * 3549.99),
    (2, 3, 1, 5789.49),
    (3, 1, 4, 4 *  38499.99);
INSERT INTO payments (
    order_id, payment_date, amount, payment_status)
VALUES (2, '2026-04-12',  7099.98, 'Pending'),
    (1, '2026-02-21',  7099.98, 'Paind'),
    (3, '2026-06-28', 153999.96, 'Paind');
INSERT INTO delliveries (
    order_id, courier_id, dellivery_address, dellivery_date, dellivery_status)
VALUES (2, 2, 'м.Київ, вул. Васильківська 22/3', '2026-04-15', 'Pending'),
    (1, 3, 'м.Рівне, вул. Соборна 253/178', '2026-02-24', 'Dellivered'),
    (3, 1, 'м.Дніпро, вул. Степана Бандери 1/5', '2026-06-10', 'Dellivered');
