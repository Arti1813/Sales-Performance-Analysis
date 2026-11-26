SELECT TOP (1000) [Ship_Mode]
      ,[Segment]
      ,[Country]
      ,[City]
      ,[State]
      ,[Postal_Code]
      ,[Region]
      ,[Category]
      ,[Sub_Category]
      ,[Sales]
      ,[Quantity]
      ,[Discount]
      ,[Profit]
  FROM [Sales_Analysis].[dbo].[Sales_Cleaned]

  USE Sales_Analysis;
GO

SELECT
    COUNT(*) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    AVG(Discount) AS Average_Discount
FROM dbo.Sales_Cleaned;

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM dbo.Sales_Cleaned
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM dbo.Sales_Cleaned
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT
    [Sub_Category],
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM dbo.Sales_Cleaned
GROUP BY [Sub_Category]
ORDER BY Total_Profit DESC;

SELECT
    [Sub_Category],
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY [Sub_Category]
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

SELECT
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    AVG(Discount) AS Average_Discount
FROM dbo.Sales_Cleaned
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    AVG(Discount) AS Average_Discount
FROM dbo.Sales_Cleaned
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT TOP 10
    City,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Cleaned
GROUP BY City
ORDER BY Total_Sales DESC;
