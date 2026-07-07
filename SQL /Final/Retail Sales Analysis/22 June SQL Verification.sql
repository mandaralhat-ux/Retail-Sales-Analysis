USE superstore_db;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Category
ORDER BY Category;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Region
ORDER BY Region;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    Category,
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category, Region
ORDER BY Category, Region;