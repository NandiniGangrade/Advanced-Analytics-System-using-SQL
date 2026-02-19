USE ecommerce_analytics;

-- 1. Total Revenue
SELECT SUM(amount) AS total_revenue
FROM payments;

-- 2. Monthly Revenue Trend
SELECT 
    DATE_FORMAT(o.order_date,'%Y-%m') AS month,
    SUM(p.amount) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

-- 3. Top Selling Products
SELECT 
    pr.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.product_name
ORDER BY total_sold DESC;

-- 4. Top Customers by Spending
SELECT 
    c.name,
    SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 5. Repeat Customers
SELECT 
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- 6. Category Revenue
SELECT 
    pr.category,
    SUM(oi.quantity * pr.price) AS revenue
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.category
ORDER BY revenue DESC;

-- 7. Payment Method Analysis
SELECT 
    payment_method,
    COUNT(*) AS usage_count,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_method;

-- 8. Customer Lifetime Value
SELECT 
    c.customer_id,
    c.name,
    SUM(p.amount) AS lifetime_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
ORDER BY lifetime_value DESC;
