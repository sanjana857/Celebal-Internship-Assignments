-- SECTION A : SQL Basics

-- Q1. Write a query to display all columns and rows from the customer's table. 

SELECT * FROM customers;

-- Q2. Retrieve only the first_name, last_name, and city of all customers. 

SELECT first_name, last_name, city 
FROM customers;

-- Q3. List all unique categories available in the products table. 

SELECT DISTINCT category FROM products;

-- Q6. Try inserting a product with unit_price = -50. What happens and which constraint prevents it? Write both the INSERT statement and explain the error.

INSERT INTO products (product_id, product_name, category, brand, unit_price, stock_qty)
VALUES(209, 'Test Product', 'Electronics', 'TestBrand', -50,10);



-- SECTION B : FILTERING AND OPTIMISATION



-- Q7. Retrieve all orders with status = 'Delivered'. 

SELECT * FROM orders WHERE status = 'Delivered';

-- Q8. Find all products in the 'Electronics' category with a unit_price greater than ₹2000. 

SELECT * FROM products WHERE category = 'Electronics'
AND unit_price > 2000;

-- Q9. List all customers who joined in the year 2024 and belong to the state 'Maharashtra'. 

SELECT * 
FROM customers 
WHERE state = 'Maharashtra'
AND join_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Q10. Find all orders placed between '2024-08-10' and '2024-08-25' (inclusive) that are NOT cancelled. 

SELECT * FROM orders WHERE order_date 
BETWEEN '2024-08-10'AND '2024-08-25'
AND status <> 'Cancelled';



-- SECTION C : Aggregation (GROUP BY, SUM, COUNT, AVG, MIN, MAX)



-- Q13. Count the total number of orders in the orders table. 

SELECT COUNT(*) AS total_orders
FROM orders;

-- Q14. Find the total revenue (SUM of total_amount) from all 'Delivered' orders. 

SELECT SUM(total_amount) AS delivered_revenue
FROM orders 
WHERE status = 'Delivered';

-- Q15. Calculate the average unit_price of products in each category. 

SELECT category,
AVG(unit_price) AS avg_unit_price
FROM products
GROUP BY category;

-- Q16. For each order status, find the count of orders and the total revenue. Sort the result by total revenue in descending order. 

SELECT status,
COUNT(*) AS order_count,
SUM(total_amount) AS total_revenue
FROM orders
GROUP BY status
ORDER BY total_revenue DESC;

-- Q17. Find the most expensive (MAX) and cheapest (MIN) product in each category. 

SELECT category,
MAX(unit_price) AS most_expensive_product,
MIN(unit_price) AS cheapest_product
FROM products 
GROUP BY category;

-- Q18. List all product categories where the average unit_price is greater than ₹2000. (Hint: Use HAVING clause) 

SELECT category,
AVG(unit_price) AS avg_price
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2000;



-- SECTION D : JOINS AND RELATIONSHIPS



-- Q19. Write an INNER JOIN query to display each order along with the customer's first_name and last_name. Show: order_id, order_date, first_name, last_name, total_amount. 

SELECT 
o.order_id,
o.order_date,
c.first_name,
c.last_name,
o.total_amount
FROM orders o 
INNER JOIN customers c
ON o.customer_id = c.customer_id;

-- Q20. Using a LEFT JOIN, list ALL customers and their orders (if any). Customers with no orders should still appear with NULL values for order columns. 

SELECT
c.customer_id,
c.first_name,
c.last_name,
o.order_id,
o.order_date,
o.total_amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- Q21. Write a query using JOINs across three tables (orders → order_items → products) to show: order_id, product_name, quantity, unit_price, and discount_pct for each order item. 

SELECT 
o.order_id,
p.product_name,
oi.quantity,
oi.unit_price,
oi.discount_pct
FROM orders o 
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;



-- SECTION E : ADVANCE CONCEPTS (CASE, ACID, Transactions)



/*
Q24. Write a query using CASE to classify products into price tiers: 
  • 'Budget'    → unit_price < 1000 
  • 'Mid-Range' → unit_price BETWEEN 1000 AND 3000 
  • 'Premium'   → unit_price > 3000 
Display: product_name, unit_price, price_tier. 
*/

SELECT 
product_name,
unit_price,
CASE
WHEN unit_price < 1000 THEN 'Budget'
WHEN unit_price BETWEEN 1000 AND 3000 THEN 'Mid-Range'
ELSE 'Premium'
END AS 'price_tier'
FROM products;

-- Q25. Using a CASE statement inside an aggregate function, count how many orders are 'Delivered' vs 'Not Delivered' (all other statuses). Display the result in a single row. 

SELECT
SUM(CASE WHEN status = 'Delivered' THEN 1 ELSE 0 END)
AS delivered_orders,

SUM(CASE WHEN status <> 'Delivered' THEN 1 ELSE 0 END)
    AS not_delivered_orders

FROM orders;
/*
Q27. Write a SQL transaction that does the following atomically: 

  1. Insert a new order (order_id=1011, customer_id=102, today's date, 'Pending', 1598.00) 
  2. Insert two order items for that order 
  3. Update the stock_qty of the purchased products 
  4. If any step fails, ROLLBACK the entire transaction. Otherwise, COMMIT. 
Write the complete BEGIN...COMMIT/ROLLBACK block. 
*/

START TRANSACTION;

INSERT INTO orders
(order_id,customer_id, order_date, status, total_amount)
VALUES(1011,102,CURRENT_DATE, 'Pending', 1598.00);

INSERT INTO order_items
(item_id, order_id, product_id, quantity, unit_price, discount_pct)
VALUES(5016,1011,206, 1, 1299.00, 0);

INSERT INTO order_items
(item_id, order_id, product_id, quantity, unit_price, discount_pct)
VALUES
(5017, 1011, 208, 1, 599.00, 0);

UPDATE products 
SET stock_qty = stock_qty -1
WHERE product_id = 206;

UPDATE products 
SET stock_qty = stock_qty - 1
WHERE product_id= 208;

COMMIT;