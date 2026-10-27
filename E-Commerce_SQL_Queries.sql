-- Select the E commerece project database
USE ecommerce_DB;
-- CHECK WEATHER THE e COMMERCE TABLE IN THE RESULT
SHOW TABLES;
-- check whether the ecommerce table comtains the imported records
SELECT COUNT(*) AS total_records
FROM ecommerce;
-- Count the records imported into the E-Commerce table
SELECT COUNT(*) AS total_records
FROM ecommerce;
-- display yhe first 5 records from the e commerce table
SELECT*
FROM ecommerce 
LIMIT 5;
-- Display the column names and data types of the E-Commerce table
DESCRIBE ecommerce_cleaned;
-- calculate the total sales generated
SELECT SUM(SALES) AS TOTAL_SALES
FROM ecommerce_cleaned;
-- calculate the total profit genrated
SELECT SUM(PROFIT) AS TOTAL_PROFITS
FROM ecommerce;
-- calculate the total quantity of products sold
SELECT SUM(QUANTITY) AS TOTAL_QUANTITY
FROM ecommerce;
-- count the total no. of orders
SELECT COUNT(*) AS Total_Orders
FROM ecommerce;
-- calculate the overall profit margin
SELECT (SUM(PROFIT)/SUM(SALES)) *100 AS Profit_Margin
FROM ecommerce;
-- calculate total sales for each category
SELECT CATEGORY,SUM(SALES) AS TOTAL_SALES
FROM ecommerce
GROUP BY Category;
-- calculate total profit for each category
SELECT CATEGORY,SUM(PROfit) AS Total_profit
FROM ecommerce
GROUP BY Category;
SELECT CATEGORY,SUM(QUANTITY) AS TOTAL_QUANTITY
FROM ecommerce
GROUP BY CATEGORY;
-- calculate total sales for each region
SELECT REGION,SUM(SALES) AS Total_Sales
FROM ecommerce
GROUP BY REGION;
-- Calculate total profit for each region
SELECT Region,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Region;
-- Calculate total quantity sold in each region
SELECT Region,SUM(Quantity) AS Total_Quantity
FROM ecommerce
GROUP BY Region;
-- calculate total sales for each product
SELECT PRODUCT_NAME,SUM(SALES) AS TOTAL_SALES
FROM ecommerce
GROUP BY PRODUCT_NAME
ORDER BY TOTAL_SALES DESC;
-- Calculate total profit for each product
SELECT PRODUCT_NAME,SUM(PROFIT) AS TOTAL_PROFIT
FROM ecommerce
GROUP BY PRODUCT_NAME
ORDER BY TOTAL_PROFIT DESC;
-- Calculate total quantity sold for each product
SELECT Product_Name,SUM(Quantity) AS Total_Quantity
FROM ecommerce
GROUP BY Product_Name
ORDER BY Total_Quantity DESC;
-- Find the top 5 products based on total sales
SELECT Product_Name,SUM(Sales) AS Total_Sales
FROM ecommerce
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;
-- Find the top 5 products based on total profit
SELECT Product_Name,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;
-- Find the 5 products with the lowest total profit
SELECT Product_Name,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Product_Name
ORDER BY Total_Profit ASC
LIMIT 5;
-- Calculate total sales for each year
SELECT Year,SUM(Sales) AS Total_Sales
FROM ecommerce
GROUP BY Year
ORDER BY Year;
-- Calculate total profit for each year
SELECT Year,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Year
ORDER BY Year;
-- Calculate total sales for each month
SELECT Month,Month_Name, SUM(Sales) AS Total_Sales
FROM ecommerce
GROUP BY Month, Month_Name
ORDER BY Month;
-- calculate the average sales value per order
SELECT AVG(SALES) AS AVERAGE_SALES
FROM ecommerce;
-- calculate the average profit value per order
SELECT AVG(PROFIT) AS AVERAGE_PROFIT
FROM ecommerce;
-- calculate the average profit margin
SELECT AVG(PROFIT_MARGIN) AS AVERAGE_PROFIT_MARGIN
FROM ecommerce;
-- calculate profit margin for each category
SELECT CATEGORY,(SUM(PROFIT)/SUM(SALES)) * 100 AS PROFIT_MARGIN
FROM ecommerce
GROUP BY CATEGORY;
-- calculate profit margin for each region
SELECT REGION,(SUM(PROFIT)/SUM(SALES))*100 AS PROFIT_MARGIN
FROM ecommerce
GROUP BY REGION;
-- display orders where the profit is negative
SELECT *
FROM ecommerce
WHERE PROFIT<0;
-- count the no. of loss-maling orders
SELECT CATEGORY,SUM(SALES)AS TOTAL_SALES,SUM(PROFIT) AS TOTAL_PROFIT
FROM ecommerce
GROUP BY CATEGORY;
-- Compare total sales and profit for each category
SELECT Category,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Category;
-- Compare total sales and profit for each region
SELECT Region,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Region;
-- Identify products with high sales but relatively low profit
SELECT Product_Name,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM ecommerce
GROUP BY Product_Name
ORDER BY Total_Sales DESC;