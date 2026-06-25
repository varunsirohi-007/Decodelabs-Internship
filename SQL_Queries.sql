CREATE TABLE orders (...);

SELECT COUNT(*) FROM orders;
SELECT SUM(TotalPrice) FROM orders;
SELECT Product, SUM(Quantity) FROM orders GROUP BY Product ORDER BY SUM(Quantity) DESC;
SELECT PaymentMethod, COUNT(*) FROM orders GROUP BY PaymentMethod;
