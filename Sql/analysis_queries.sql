-- View the whole Dataset
SELECT *
FROM "CLEANED DATA";

-- Revenue and order count by region
SELECT region,
COUNT(order_id) AS total_orders,
SUM(total_sales_ngn) AS total_revenue
FROM "CLEANED DATA"
GROUP BY region
ORDER BY total_revenue DESC;

--Top 5 product categories by revenue
SELECT product_category,
SUM(total_sales_ngn) AS category_revenue
FROM "CLEANED DATA"
GROUP BY product_category
ORDER BY category_revenue
DESC LIMIT 5;

-- Monthly revenue trend
SELECT TO_CHAR (order_date, 'MM') AS sales_month,
SUM(total_sales_ngn) AS monthly_revenue
FROM "CLEANED DATA"
GROUP BY sales_month
ORDER BY monthly_revenue;