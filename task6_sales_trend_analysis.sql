CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO orders VALUES
(1,'2024-01-05',500,101),
(2,'2024-01-10',800,102),
(3,'2024-02-15',600,103),
(4,'2024-02-20',1200,101),
(5,'2024-03-01',900,102),
(6,'2024-03-10',1500,104),
(7,'2024-04-05',700,105),
(8,'2024-04-15',1100,101),
(9,'2024-05-12',1300,103),
(10,'2024-05-25',1600,104);
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
SELECT * FROM orders;