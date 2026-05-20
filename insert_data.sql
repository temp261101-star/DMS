-- Sample Data Inserts for E-Commerce Platform

USE ecommerce;

INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Alice',   'Johnson', 'alice@example.com',  '+91-9876543210'),
('Bob',     'Smith',   'bob@example.com',    '+91-9876543211'),
('Carol',   'White',   'carol@example.com',  '+91-9876543212'),
('David',   'Brown',   'david@example.com',  '+91-9876543213'),
('Eve',     'Davis',   'eve@example.com',    '+91-9876543214');
('Mansi',     'Hajare',   'mansi@example.com',    '+91-9876543214');

INSERT INTO products (name, description, price, stock, category) VALUES
('Laptop Pro 15',    '15-inch laptop, 16GB RAM, 512GB SSD', 999.99, 50,  'Electronics'),
('Wireless Mouse',   'Ergonomic wireless mouse',             29.99,  200, 'Electronics'),
('USB-C Hub',        '7-in-1 USB-C hub',                     49.99,  150, 'Electronics'),
('Desk Lamp',        'LED desk lamp with dimmer',             34.99,  100, 'Furniture'),
('Notebook (A5)',    '200 page ruled notebook',               5.99,   500, 'Stationery');

INSERT INTO orders (customer_id, total_amount, status) VALUES
(1, 1029.98, 'Delivered'),
(2, 84.98,   'Shipped'),
(3, 5.99,    'Processing'),
(4, 999.99,  'Pending'),
(5, 49.99,   'Shipped');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 999.99),
(1, 2, 1, 29.99),
(2, 2, 1, 29.99),
(2, 3, 1, 49.99),
(3, 5, 1, 5.99),
(4, 1, 1, 999.99),
(5, 3, 1, 49.99);
