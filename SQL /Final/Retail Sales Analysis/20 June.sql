USE superstore_db;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Sales ASC
LIMIT 10;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Profit ASC
LIMIT 10;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percent
FROM superstore
GROUP BY State
ORDER BY Profit_Margin_Percent DESC;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount > 0 AND Discount <= 0.2 THEN 'Low Discount'
        WHEN Discount > 0.2 AND Discount <= 0.5 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS Discount_Group,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Discount_Group
ORDER BY Total_Sales DESC;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    Discount,
    ROUND(AVG(Profit),2) AS Avg_Profit,
    ROUND(AVG(Sales),2) AS Avg_Sales
FROM superstore
GROUP BY Discount
ORDER BY Discount;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    Discount,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Discount
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    Category,
    ROUND(AVG(Discount),2) AS Avg_Discount,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    `Ship Mode`,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    `Ship Mode`,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percent
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Profit_Margin_Percent DESC;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    `Ship Mode`,
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY `Ship Mode`, Category
ORDER BY `Ship Mode`, Total_Sales DESC;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    `Ship Mode`,
    COUNT(*) AS Total_Records
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Records DESC;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY State, Category
ORDER BY Total_Sales DESC
LIMIT 20;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY State, Category
ORDER BY Total_Profit DESC
LIMIT 20;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY State, Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    State,
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percent
FROM superstore
GROUP BY State, Category
ORDER BY Profit_Margin_Percent DESC;