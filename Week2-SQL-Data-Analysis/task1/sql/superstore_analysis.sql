SELECT * FROM sample_superstore LIMIT 10;
SELECT * FROM sample_superstore WHERE Region = 'West';
SELECT * FROM sample_superstore WHERE Category='Technology';
SELECT * FROM sample_superstore WHERE Sales > 500;

SELECT Region,
SUM(Sales)
FROM sample_superstore
GROUP BY Region;

SELECT Category,
SUM(Quantity)
FROM sample_superstore
GROUP BY Category;

SELECT Category,
AVG(Sales)
FROM sample_superstore
GROUP BY Category;

SELECT [Product Name], 
SUM(Sales)
FROM sample_superstore
GROUP BY [Product Name]
ORDER BY SUM(Sales) DESC
LIMIT 10;

SELECT Category,
SUM(Sales)
FROM sample_superstore
GROUP BY Category;
ORDER BY SUM(Sales) DESC;

SELECT [Customer Name],
SUM(Sales)
FROM sample_superstore
GROUP BY [Customer Name]
ORDER BY SUM(Sales) DESC
LIMIT 10;

SELECT [Order ID],
COUNT(*)
FROM sample_superstore
GROUP BY [Order ID]
HAVING COUNT(*) > 1;

SELECT COUNT(*)
FROM sample_superstore;