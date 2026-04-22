INSERT INTO users (name, email) VALUES
('Nayan', 'nayan@gmail.com'),
('Rahul', 'rahul@gmail.com');

INSERT INTO products (name, price, stock) VALUES
('Laptop', 60000, 10),
('Phone', 30000, 20);

INSERT INTO orders (user_id) VALUES
(1),
(2);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 1);