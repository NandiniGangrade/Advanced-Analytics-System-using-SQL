USE ecommerce_analytics;

-- Customers
INSERT INTO customers VALUES
(1,'Rahul Sharma','Delhi','2023-01-10'),
(2,'Anita Verma','Mumbai','2023-02-12'),
(3,'Rohit Gupta','Indore','2023-03-15'),
(4,'Sneha Patel','Ahmedabad','2023-04-20'),
(5,'Vikram Singh','Jaipur','2023-05-22');

-- Products
INSERT INTO products VALUES
(101,'Laptop','Electronics',70000),
(102,'Smartphone','Electronics',30000),
(103,'Headphones','Accessories',2000),
(104,'Office Chair','Furniture',8000),
(105,'Coffee Maker','Home Appliances',5000);

-- Orders
INSERT INTO orders VALUES
(1001,1,'2024-01-05','Delivered'),
(1002,2,'2024-01-07','Delivered'),
(1003,1,'2024-02-10','Cancelled'),
(1004,3,'2024-02-12','Delivered'),
(1005,4,'2024-03-01','Shipped'),
(1006,5,'2024-03-05','Delivered');

-- Order Items
INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,105,1),
(5,1004,104,1),
(6,1005,101,1),
(7,1006,103,3);

-- Payments
INSERT INTO payments VALUES
(1,1001,74000,'Credit Card'),
(2,1002,30000,'UPI'),
(3,1004,8000,'Debit Card'),
(4,1006,6000,'UPI');
