USE superstore_db;
--------------------------------------------------------------------------------
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore;
--------------------------------------------------------------------------------
SELECT
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;
--------------------------------------------------------------------------------
SELECT
	SUM(Quantity) AS Total_Quantity
FROM superstore;
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
SELECT
    `Sub-Category`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;