USE Sales_Analysis;
GO

SELECT TOP 10 *
FROM dbo.Sales_Cleaned;

SELECT COUNT(*) AS Total_Records
FROM dbo.Sales_Cleaned;

SELECT SUM(Sales) AS Total_Sales
FROM dbo.Sales_Cleaned;

SELECT AVG(Sales) AS Average_Sales
FROM dbo.Sales_Cleaned;

SELECT Category, SUM(Sales) AS Total_Sales
FROM dbo.Sales_Cleaned
GROUP BY Category;

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    NUMERIC_PRECISION,
    NUMERIC_SCALE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Sales_Cleaned'
AND COLUMN_NAME IN ('Sales', 'Profit');

SELECT TOP 20
    Sales,
    Profit,
    Category
FROM dbo.Sales_Cleaned;

SELECT
    MIN(Profit) AS Min_Profit,
    MAX(Profit) AS Max_Profit,
    AVG(Profit) AS Avg_Profit,
    COUNT(Profit) AS Profit_Count,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned;

SELECT Category, SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT TOP 10
    [Sub-Category],
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY [Sub-Category]
ORDER BY Total_Profit DESC;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Sales_Cleaned';

SELECT TOP 10
    Sub_Category,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;

SELECT
    Sub_Category,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

SELECT
    COUNT(*) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    AVG(Discount) AS Average_Discount
FROM dbo.Sales_Cleaned;
