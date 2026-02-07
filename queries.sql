-- --------------------------------------------------
-- Step 0: Create the project database
-- --------------------------------------------------
-- Creates a new database named 'project'. 
-- All subsequent tables (city, customers, products, sales) are assumed to exist in this database.
CREATE DATABASE project;

-- --------------------------------------------------
-- Step 1: View all records in each table
-- --------------------------------------------------
-- Shows the entire dataset of the city table.
SELECT * FROM project.city;

-- Shows the entire dataset of the customers table.
SELECT * FROM project.customers;

-- Shows the entire dataset of the products table.
SELECT * FROM project.products;

-- Shows the entire dataset of the sales table.
SELECT * FROM project.sales;


-- --------------------------------------------------
-- 1. Retrieve the total number of sales placed
-- --------------------------------------------------
-- COUNT(*) counts all rows in the sales table. Each row represents a single sale.
SELECT COUNT(*) AS total_sales
FROM sales;


-- --------------------------------------------------
-- 2. Calculate the total revenue generated from all sales
-- --------------------------------------------------
-- SUM(total) adds up the 'total' column of all sales, giving the total revenue.
SELECT SUM(total) AS total_revenue
FROM sales;


-- --------------------------------------------------
-- 3. Identify the highest-priced products
-- --------------------------------------------------
-- Orders products by price in descending order.
-- LIMIT 3 returns only the top 3 most expensive products.
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;


-- --------------------------------------------------
-- 4. Identify the most frequently sold product
-- --------------------------------------------------
-- Joins products and sales to count how many times each product was sold.
-- GROUP BY aggregates sales per product.
-- ORDER BY total_sales DESC shows the most sold products first.
SELECT products.product_name, COUNT(sales.sale_id) AS total_sales
FROM products
JOIN sales ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_sales DESC;


-- --------------------------------------------------
-- 5. List the top 5 most sold products along with number of times sold
-- --------------------------------------------------
-- Same as previous query, but limits output to top 5 products.
SELECT products.product_name, COUNT(sales.sale_id) AS total_sales
FROM products
JOIN sales ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_sales DESC
LIMIT 5;


-- --------------------------------------------------
-- 6. Find the total revenue generated for each product
-- --------------------------------------------------
-- Joins products and sales to calculate revenue per product.
-- SUM(sales.total) gives total revenue for each product.
-- ORDER BY total_revenue DESC lists products from highest to lowest revenue.
SELECT products.product_name, SUM(sales.total) AS total_revenue
FROM sales
JOIN products ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_revenue DESC;


-- --------------------------------------------------
-- 7. Estimate coffee consumers in each city
-- --------------------------------------------------
-- Assumes 25% of the city's population consumes coffee.
-- city.population * 0.25 calculates estimated coffee drinkers per city.
-- ORDER BY estimated_population DESC lists cities with most estimated consumers first.
SELECT city.city_name, city.population * 0.25 AS estimated_population
FROM city
ORDER BY estimated_population DESC;


-- --------------------------------------------------
-- 8. Customers who have spent more than 5000
-- --------------------------------------------------
-- Joins customers and sales to calculate total spending per customer.
-- GROUP BY customer_id ensures aggregation by customer.
-- HAVING filters only customers who spent more than 5000.
SELECT customers.customer_id, SUM(sales.total) AS total_revenue
FROM sales
JOIN customers ON customers.customer_id = sales.customer_id
GROUP BY customers.customer_id
HAVING total_revenue > 5000
ORDER BY total_revenue DESC;


-- --------------------------------------------------
-- 9. Number of products sold in each city
-- --------------------------------------------------
-- Joins city → customers → sales to associate sales with a city.
-- COUNT(sales.sale_id) counts total products sold 
SELECT city.city_name, COUNT(sales.sale_id) AS product_sold
FROM city
JOIN customers ON city.city_id = customers.city_id
JOIN sales ON customers.customer_id = sales.customer_id
GROUP BY city.city_name
ORDER BY product_sold DESC;


-- --------------------------------------------------
-- 10. Number of unique customers in each city who purchased coffee products
-- --------------------------------------------------
-- Filters sales to coffee product IDs (assumed 1–14).
-- COUNT(DISTINCT customers.customer_id) counts only unique customers.
SELECT city.city_name, COUNT(DISTINCT customers.customer_id) AS unique_customer
FROM city 
JOIN customers ON customers.city_id = city.city_id
JOIN sales ON sales.customer_id = customers.customer_id
WHERE  sales.product_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)
GROUP BY city.city_name;

-- --------------------------------------------------
-- 11. Calculate the percentage contribution of each city to total revenue
-- --------------------------------------------------
-- Joins city, customers, and sales to associate revenue with city.
-- SUM(sales.total) gives revenue per city.
-- Divides by total revenue of all sales to get percentage contribution.
SELECT city.city_name, (SUM(sales.total) / (SELECT SUM(total) FROM sales) * 100) AS revenue_percent
FROM city
JOIN customers ON customers.city_id = city.city_id
JOIN sales ON sales.customer_id = customers.customer_id
GROUP BY city.city_name
ORDER BY revenue_percent DESC;


-- --------------------------------------------------
-- 12. Analyze cumulative revenue over time
-- --------------------------------------------------
-- Inner query: calculates total revenue per sale date.
-- Outer query: uses SUM(...) OVER(ORDER BY sale_date) to calculate running cumulative revenue.
SELECT daily_sales.sale_date, 
       SUM(daily_sales.revenue) OVER(ORDER BY daily_sales.sale_date) AS cumulative
FROM
(SELECT sales.sale_date, SUM(sales.total) AS revenue 
 FROM sales
 GROUP BY sales.sale_date) AS daily_sales;


-- --------------------------------------------------
-- 13. Top 3 products by revenue for each city
-- --------------------------------------------------
-- Step 1 (total_sales): calculates total revenue per product in each city.
-- Step 2 (ranked_products): ranks products within each city by revenue using RANK().
-- Step 3: selects only top 3 products per city using WHERE revenue_each_city <= 3.
SELECT city_name, product_name, total, revenue_each_city
FROM
(SELECT city_name, product_name, total,
RANK () OVER (PARTITION BY city_name ORDER BY total DESC) AS revenue_each_city
FROM
(SELECT city.city_name, products.product_name, SUM(sales.total) AS total
FROM city
JOIN customers ON city.city_id = customers.city_id
JOIN sales ON customers.customer_id = sales.customer_id
JOIN products ON sales.product_id = products.product_id
GROUP BY city.city_name, products.product_name) AS total_sales
) AS ranked_products
WHERE revenue_each_city <= 3;