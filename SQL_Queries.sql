-- Q1 Total Orders
SELECT COUNT(*) AS Total_Orders FROM orders;

-- Q2 Total Revenue
SELECT SUM(TotalPrice) AS Total_Revenue FROM orders;

-- Q3 Average Order Value
SELECT AVG(TotalPrice) AS Avg_Order_Value FROM orders;

-- Q4 Top 5 Selling Products
SELECT Product, SUM(Quantity) AS Qty_Sold
FROM orders GROUP BY Product ORDER BY Qty_Sold DESC LIMIT 5;

-- Q5 Highest Revenue Product
SELECT Product, SUM(TotalPrice) AS Revenue
FROM orders GROUP BY Product ORDER BY Revenue DESC LIMIT 1;

-- Q6 Payment Method Distribution
SELECT PaymentMethod, COUNT(*) AS Orders
FROM orders GROUP BY PaymentMethod;

-- Q7 Monthly Revenue Trend
SELECT MONTH(Date) AS Month, SUM(TotalPrice) AS Revenue
FROM orders GROUP BY MONTH(Date);

-- Q8 Referral Source Performance
SELECT ReferralSource, SUM(TotalPrice) AS Revenue
FROM orders GROUP BY ReferralSource ORDER BY Revenue DESC;

-- Q9 Top 10 Customers by Spending
SELECT CustomerID, SUM(TotalPrice) AS Spending
FROM orders GROUP BY CustomerID ORDER BY Spending DESC LIMIT 10;

-- Q10 Business KPI Summary
SELECT COUNT(OrderID) AS Total_Orders,
SUM(TotalPrice) AS Total_Revenue,
AVG(TotalPrice) AS Avg_Order_Value,
COUNT(DISTINCT CustomerID) AS Unique_Customers
FROM orders;
