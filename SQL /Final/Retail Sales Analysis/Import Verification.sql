	SELECT * FROM superstore_db.superstore;
    USE superstore_db;
    SELECT COUNT(*) AS Total_Rows
FROM superstore;
SELECT *
FROM superstore
LIMIT 10;

SELECT
    MIN(Order_Date) AS First_Order,
    MAX(Order_Date) AS Last_Order
FROM superstore;

DESCRIBE superstore;
SHOW COLUMNS FROM superstore;

SELECT COUNT(*) FROM superstore;
SHOW COLUMNS FROM superstore;

SHOW COLUMNS FROM superstore;





SELECT COUNT(*) AS Total_Records
FROM superstore;
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;
SELECT SUM(Quantity) AS Total_Quantity
FROM superstore;
SELECT COUNT(DISTINCT Category) AS Unique_Categories
FROM superstore;
SELECT COUNT(DISTINCT `Sub-Category`) AS Unique_Subcategories
FROM superstore;
SELECT COUNT(DISTINCT Region) AS Unique_Regions
FROM superstore;