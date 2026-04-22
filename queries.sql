-- Total Revenue
SELECT SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.id;

-- Top Customers
SELECT u.name, SUM(p.price * oi.quantity) AS total_spent
FROM users u
JOIN orders o ON u.id = o.user_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
GROUP BY u.name
ORDER BY total_spent DESC;

-- Product Sales
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.name;

-- Price Category
SELECT name, price,
CASE
  WHEN price < 30000 THEN 'Cheap'
  ELSE 'Expensive'
END AS category
FROM products;