-- 1)How much revenue did the company generate?

-- SELECT Round(Sum(TotalAmount),2) as TotalRevenue
-- from transactions;

-- 2)Total Transactions

-- SELECT count(*) from transactions;

-- 3)Unique Customers

-- SELECT count(DISTINCT CustomerID) as Unique_Customers
-- from transactions

-- 4)Unique Products Sold

-- SELECT count(DISTINCT StockCode) as Unique_Product
-- from products

-- 5)Average Order Value (AOV)

-- SELECT round(sum(TotalAmount)/count(DISTINCT StockCode),2) as AOV
-- from transactions;

-- 6)How many products customers buy in one order on average?

-- SELECT ROUND( COUNT(*) / COUNT(DISTINCT InvoiceNo),2) AS Avg_Products_Per_Order
-- FROM transactions;

-- 7)What is the average Spending Per Customer?

-- SELECT ROUND( SUM(TotalAmount) / COUNT(DISTINCT CustomerID),2) AS Avg_Revenue_Per_Customer
-- FROM transactions;

-- 8)What is the revenue over per Product Sold?

-- SELECTROUND(SUM(TotalAmount) /COUNT(DISTINCT StockCode),2) AS Revenue_Per_Product
-- FROM transactions;

-- 9) Business Health Dashboard

-- SELECT
-- ROUND(SUM(TotalAmount),2) AS Total_Revenue,
-- COUNT(*) AS Transactions,
-- COUNT(DISTINCT InvoiceNo) AS Orders,
-- COUNT(DISTINCT CustomerID) AS Customers,
-- COUNT(DISTINCT StockCode) AS Products,
-- ROUND(
-- SUM(TotalAmount)/COUNT(DISTINCT InvoiceNo),2) AS Average_Order_Value
-- from transactions

-- 10)Which products sell the highest quantity?

-- SELECT
--     p.StockCode,
--     p.Description,
--     SUM(t.Quantity) AS Total_Quantity_Sold
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Total_Quantity_Sold DESC
-- LIMIT 10;

-- 11)Which products earn us the most money?

-- SELECT
--     p.StockCode,
--     p.Description,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Revenue DESC
-- LIMIT 10;

-- 12)Which products appear in the highest number of orders?

-- SELECT
--     p.StockCode,
--     p.Description,
--     COUNT(DISTINCT t.InvoiceNo) AS Orders
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Orders DESC
-- LIMIT 10;

-- 13)Which products are purchased the most by customers?

-- SELECT
--     p.Description,
--     SUM(t.Quantity) AS Total_Quantity_Sold
-- FROM transactions t
-- JOIN products p
--     ON t.StockCode = p.StockCode
-- GROUP BY p.Description
-- ORDER BY Total_Quantity_Sold DESC
-- LIMIT 10;

-- 14)Which products are premium-priced?

-- SELECT
--     p.Description,
--     ROUND(AVG(t.UnitPrice),2) AS Average_Price
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY p.Description
-- ORDER BY Average_Price DESC
-- LIMIT 10;

-- 15)How much does each product contribute to total company revenue?

-- SELECT
--     p.Description,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue,
--     ROUND(
--         SUM(t.TotalAmount) * 100 /
--         (SELECT SUM(TotalAmount) FROM transactions),
--         2
--     ) AS Revenue_Percentage
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY p.Description
-- ORDER BY Revenue DESC
-- LIMIT 10;

-- 16)On average, how many units of a product are purchased in each order?

-- SELECT
--     p.StockCode,
--     p.Description,
--     ROUND(AVG(t.Quantity),2) AS Avg_Quantity_Per_Order
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Avg_Quantity_Per_Order DESC
-- LIMIT 10;

-- 17)Which products are popular across the largest number of different customers?

-- SELECT
--     p.StockCode,
--     p.Description,
--     COUNT(DISTINCT t.CustomerID) AS Unique_Customers
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Unique_Customers DESC
-- LIMIT 10;

-- 18)Which products might need promotions, pricing changes, or discontinuation?

-- SELECT
--     p.StockCode,
--     p.Description,
--     SUM(t.Quantity) AS Quantity_Sold
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- HAVING SUM(t.Quantity) < 5
-- ORDER BY Quantity_Sold DESC
-- LIMIT 10;

-- 19)Which products are returned most frequently?

-- SELECT
--     p.StockCode,
--     p.Description,
--     ABS(SUM(t.Quantity)) AS Returned_Quantity
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- WHERE t.Quantity < 0
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Returned_Quantity DESC
-- LIMIT 10;
-- Output will be 0 since we excluded the negative quantities in cleaning

-- 20)Complete Product Analysis Summary

-- SELECT
--     p.StockCode,
--     p.Description,
--     SUM(t.Quantity) AS Quantity_Sold,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue,
--     COUNT(DISTINCT t.InvoiceNo) AS Orders,
--     COUNT(DISTINCT t.CustomerID) AS Customers,
--     ROUND(AVG(t.UnitPrice),2) AS Avg_Price
-- FROM transactions t
-- JOIN products p
-- ON t.StockCode = p.StockCode
-- GROUP BY
--     p.StockCode,
--     p.Description
-- ORDER BY Revenue DESC
-- LIMIT 20;

-- 21)Which customers generated the highest revenue?

-- SELECT
--     c.CustomerID,
--     c.Country,
--     ROUND(SUM(t.TotalAmount),2) AS Total_Revenue
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY
--     c.CustomerID,
--     c.Country
-- ORDER BY Total_Revenue DESC
-- LIMIT 20;

-- 22)Which customers place orders most frequently?

-- SELECT
--     c.CustomerID,
--     c.Country,
--     COUNT(DISTINCT t.InvoiceNo) AS Total_Orders
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY
--     c.CustomerID,
--     c.Country
-- ORDER BY Total_Orders DESC
-- LIMIT 20;

-- 23)Which customers purchase the largest number of products?

-- SELECT
--     c.CustomerID,
--     c.Country,
--     SUM(t.Quantity) AS Total_Items_Purchased
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY
--     c.CustomerID,
--     c.Country
-- ORDER BY Total_Items_Purchased DESC
-- LIMIT 20;

-- 24)How much does each customer spend on average?

-- SELECT
--     c.CustomerID,
--     c.Country,
--     ROUND(AVG(t.TotalAmount),2) AS Average_Spending
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY
--     c.CustomerID,
--     c.Country
-- ORDER BY Average_Spending DESC
-- LIMIT 20;

-- 25)How many customers purchased only once, and how many returned?

-- SELECT
--     Customer_Type,
--     COUNT(*) AS Total_Customers
-- FROM
-- (
--     SELECT
--         CustomerID,
--         CASE
--             WHEN COUNT(DISTINCT InvoiceNo)=1
--             THEN 'One-Time Customer'
--             ELSE 'Repeat Customer'
--         END AS Customer_Type
--     FROM transactions
--     GROUP BY CustomerID
-- ) AS customer_summary
-- GROUP BY Customer_Type;

-- 26)How much revenue has each customer generated over the entire dataset?

-- SELECT
--     CustomerID,
--     ROUND(SUM(TotalAmount),2) AS Lifetime_Revenue
-- FROM transactions
-- GROUP BY CustomerID
-- ORDER BY Lifetime_Revenue DESC
-- LIMIT 20;

-- 27)Highest Average Order Value per Customer

-- SELECT
--     CustomerID,
--     ROUND(
--         SUM(TotalAmount)/
--         COUNT(DISTINCT InvoiceNo),
--         2
--     ) AS Avg_Order_Value
-- FROM transactions
-- GROUP BY CustomerID
-- ORDER BY Avg_Order_Value DESC
-- LIMIT 20;

-- 28)Customer Performance Summary

-- SELECT
--     CustomerID,
--     COUNT(DISTINCT InvoiceNo) AS Orders,
--     SUM(Quantity) AS Products_Bought,
--     ROUND(SUM(TotalAmount),2) AS Revenue,
--     ROUND(AVG(UnitPrice),2) AS Avg_Purchase_Price,
--     ROUND(
--         SUM(TotalAmount)/
--         COUNT(DISTINCT InvoiceNo),
--         2
--     ) AS Avg_Order_Value
-- FROM transactions
-- GROUP BY CustomerID
-- ORDER BY Revenue DESC
-- LIMIT 20;

-- 29)Which countries generate the highest revenue?

-- SELECT
--     c.Country,
--     ROUND(SUM(t.TotalAmount),2) AS Total_Revenue
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Total_Revenue DESC;

-- 30)Which countries have the largest customer base?

-- SELECT
--     Country,
--     COUNT(DISTINCT CustomerID) AS Total_Customers
-- FROM customers
-- GROUP BY Country
-- ORDER BY Total_Customers DESC;

-- 31)Which countries place the highest number of orders?

-- SELECT
--     c.Country,
--     COUNT(DISTINCT t.InvoiceNo) AS Total_Orders
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Total_Orders DESC;

-- 32)Which countries have the highest average order value?

-- SELECT
--     c.Country,
--     ROUND(
--         SUM(t.TotalAmount) /
--         COUNT(DISTINCT t.InvoiceNo),
--         2
--     ) AS Average_Order_Value
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Average_Order_Value DESC;

-- 33)Which countries generate the highest revenue per customer?

-- SELECT
--     c.Country,
--     ROUND(
--         SUM(t.TotalAmount) /
--         COUNT(DISTINCT t.CustomerID),
--         2
--     ) AS Revenue_Per_Customer
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Revenue_Per_Customer DESC;

-- 34)Which countries purchase the largest number of products?

-- SELECT
--     c.Country,
--     SUM(t.Quantity) AS Products_Sold
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Products_Sold DESC;

-- 35)Which countries buy more items per order?

-- SELECT
--     c.Country,
--     ROUND(
--         COUNT(*) /
--         COUNT(DISTINCT t.InvoiceNo),
--         2
--     ) AS Avg_Basket_Size
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Avg_Basket_Size DESC;

-- 36)Who is the highest spending customer in every country?

-- SELECT
--     c.Country,
--     t.CustomerID,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY
--     c.Country,
--     t.CustomerID
-- ORDER BY
--     c.Country,
--     Revenue DESC;

-- 37)Country Performance Dashboard

-- SELECT
--     c.Country,
--     COUNT(DISTINCT t.CustomerID) AS Customers,
--     COUNT(DISTINCT t.InvoiceNo) AS Orders,
--     SUM(t.Quantity) AS Products_Sold,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue,
--     ROUND(
--         SUM(t.TotalAmount)/
--         COUNT(DISTINCT t.InvoiceNo),
--         2
--     ) AS Avg_Order_Value
-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- GROUP BY c.Country
-- ORDER BY Revenue DESC;

-- 38)Which months generated the highest revenue?

-- SELECT
--     YEAR(i.InvoiceDate) AS Year,
--     MONTH(i.InvoiceDate) AS Month,
--     ROUND(SUM(t.TotalAmount),2) AS Monthly_Revenue
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo = i.InvoiceNo
-- GROUP BY
--     YEAR(i.InvoiceDate),
--     MONTH(i.InvoiceDate)
-- ORDER BY
--     Year, Month;

-- 39)How many orders were placed every month?

-- SELECT
--     YEAR(i.InvoiceDate) AS Year,
--     MONTH(i.InvoiceDate) AS Month,
--     COUNT(DISTINCT i.InvoiceNo) AS Total_Orders
-- FROM invoices i
-- GROUP BY
--     YEAR(i.InvoiceDate),
--     MONTH(i.InvoiceDate)
-- ORDER BY
--     Year,Month;

-- 40)How many unique customers purchased each month?

-- SELECT
--     YEAR(i.InvoiceDate) AS Year,
--     MONTH(i.InvoiceDate) AS Month,
--     COUNT(DISTINCT t.CustomerID) AS Active_Customers
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo
-- GROUP BY
--     YEAR(i.InvoiceDate),
--     MONTH(i.InvoiceDate)
-- ORDER BY
--     Year,Month;

-- 41)Which day of the week generates the highest revenue?

-- SELECT
--     DAYNAME(i.InvoiceDate) AS Weekday,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo
-- GROUP BY
--     DAYNAME(i.InvoiceDate)
-- ORDER BY Revenue DESC;

-- 42)What is the average revenue generated per day?

-- SELECT
--     DATE(i.InvoiceDate) AS Sales_Date,
--     ROUND(SUM(t.TotalAmount),2) AS Daily_Revenue
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo
-- GROUP BY
--     DATE(i.InvoiceDate)
-- ORDER BY Sales_Date;

-- 43)How much revenue was generated each year?

-- SELECT
--     YEAR(i.InvoiceDate) AS Year,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo
-- GROUP BY
--     YEAR(i.InvoiceDate)
-- ORDER BY Year;

-- 44)Time Series Dashboard

-- SELECT
--     YEAR(i.InvoiceDate) AS Year,
--     MONTH(i.InvoiceDate) AS Month,
--     COUNT(DISTINCT i.InvoiceNo) AS Orders,
--     COUNT(DISTINCT t.CustomerID) AS Customers,
--     SUM(t.Quantity) AS Products_Sold,
--     ROUND(SUM(t.TotalAmount),2) AS Revenue
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo
-- GROUP BY
--     YEAR(i.InvoiceDate),
--     MONTH(i.InvoiceDate)
-- ORDER BY
--     Year, Month;


-- 45)Ranking Customer based on revenue

-- SELECT
--     CustomerID,
--     Revenue,
--     ROW_NUMBER() OVER(
--         ORDER BY Revenue DESC
--     ) AS Customer_Rank
-- FROM
-- (
--     SELECT
--         CustomerID,
--         ROUND(SUM(TotalAmount),2) AS Revenue
--     FROM transactions
--     GROUP BY CustomerID
-- ) customer_revenue; 
-- This was an row_number approach which gives even the same count an unique rank

-- SELECT
--     CustomerID,
--     Revenue,
--     DENSE_RANK() OVER(
--         ORDER BY Revenue DESC
--     ) AS Customer_Rank
-- FROM
-- (
--     SELECT
--         CustomerID,
--         SUM(TotalAmount) Revenue
--     FROM transactions
--     GROUP BY CustomerID
-- ) customer_revenue;
-- Whereas dense_rnk approach gives an same rank for same value bt wont skip any rank in between

-- 46)Top Customer in Every Country

-- SELECT *
-- FROM
-- (
--     SELECT
--         c.Country,
--         t.CustomerID,
--         ROUND(SUM(t.TotalAmount),2) AS Revenue,
--         ROW_NUMBER() OVER(
--             PARTITION BY c.Country
--             ORDER BY SUM(t.TotalAmount) DESC
--         ) AS rn
--     FROM transactions t
--     JOIN customers c
--         ON t.CustomerID = c.CustomerID
--     GROUP BY
--         c.Country,
--         t.CustomerID
-- ) ranked_customers
-- WHERE rn = 1;

-- 47)Customers Above Average Revenue

-- WITH customer_revenue AS
-- (
--     SELECT
--         CustomerID,
--         ROUND(SUM(TotalAmount),2) AS Revenue
--     FROM transactions
--     GROUP BY CustomerID
-- )

-- SELECT *
-- FROM customer_revenue
-- WHERE Revenue >
-- (
--     SELECT AVG(Revenue)
--     FROM customer_revenue
-- )
-- ORDER BY Revenue DESC;

-- 48)Monthly Revenue using CTE

-- WITH monthly_sales AS
-- (
--     SELECT
--         YEAR(i.InvoiceDate) AS Year,
--         MONTH(i.InvoiceDate) AS Month,
--         SUM(t.TotalAmount) Revenue
--     FROM transactions t
--     JOIN invoices i
--     ON t.InvoiceNo=i.InvoiceNo
--     GROUP BY
--         YEAR(i.InvoiceDate),
--         MONTH(i.InvoiceDate)
-- )

-- SELECT *
-- FROM monthly_sales
-- ORDER BY
-- Year, Month;

-- 49)Top Product in Every Country

-- WITH country_products AS
-- (
-- SELECT
-- c.Country,
-- p.Description,
-- SUM(t.TotalAmount) Revenue,
-- ROW_NUMBER() OVER
-- (
-- PARTITION BY c.Country
-- ORDER BY SUM(t.TotalAmount) DESC
-- ) rn

-- FROM transactions t
-- JOIN customers c
-- ON t.CustomerID=c.CustomerID
-- JOIN products p
-- ON t.StockCode=p.StockCode
-- GROUP BY
-- c.Country,
-- p.Description
-- )

-- SELECT *
-- FROM country_products
-- WHERE rn=1;