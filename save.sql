SELECT * FROM Customers;
SELECT product_name, category 
FROM Products 
WHERE price BETWEEN 5000 AND 10000;
SELECT * FROM Products 
ORDER BY price DESC;
SELECT COUNT(order_id) AS total_orders, 
       AVG(amount) AS average_amount, 
       MAX(amount) AS highest_amount, 
       MIN(amount) AS lowest_amount, 
       product_id
FROM Orders
GROUP BY product_id;
SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 2;
SELECT MONTH(date) AS month, COUNT(order_id) AS total_orders
FROM Orders
WHERE YEAR(date) = 2020
GROUP BY MONTH(date);
SELECT o.order_id, p.product_name, c.customer_name, o.date
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
JOIN Customers c ON o.customer_id = c.customer_id;
SELECT * 
FROM Orders 
WHERE date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) 
AND date < CURDATE();
SELECT c.customer_id
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
