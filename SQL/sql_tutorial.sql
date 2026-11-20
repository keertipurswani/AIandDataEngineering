CREATE TABLE and_truth_table (
    a BOOLEAN,
    b BOOLEAN
);


INSERT INTO and_truth_table VALUES
(TRUE, TRUE),
(TRUE, FALSE),
(TRUE, NULL),
(FALSE, TRUE),
(FALSE, FALSE),
(FALSE, NULL),
(NULL, TRUE),
(NULL, FALSE),
(NULL, NULL);


SELECT a, b, a AND b
FROM and_truth_table;


CREATE TABLE or_truth_table (
    a BOOLEAN,
    b BOOLEAN
);


INSERT INTO or_truth_table VALUES
(TRUE, TRUE),
(TRUE, FALSE),
(TRUE, NULL),
(FALSE, TRUE),
(FALSE, FALSE),
(FALSE, NULL),
(NULL, TRUE),
(NULL, FALSE),
(NULL, NULL);


SELECT a, b, a OR b
FROM or_truth_table;


CREATE TABLE not_truth_table (
    a BOOLEAN
);


INSERT INTO not_truth_table VALUES
(TRUE),
(FALSE),
(NULL);


SELECT a, NOT a
FROM not_truth_table;


SELECT 5 = NULL;


SELECT NULL = NULL;


SELECT NULL = 5;


SELECT 5 <> NULL;


SELECT NULL <> 5;


SELECT 5 IS NULL;


SELECT NULL IS NULL;


SELECT 5 IS NOT NULL;


SELECT NULL IS NOT NULL;




SELECT *
FROM customers
WHERE phone = NULL;


SELECT *
FROM customers
WHERE phone IS NULL;


SELECT *
FROM products
WHERE unit_price BETWEEN 799 AND 1299;


SELECT *
FROM products
WHERE unit_price >= 799 AND  unit_price <= 1299;


SELECT *
FROM products
WHERE unit_price NOT BETWEEN 799 AND 1299;


SELECT *
FROM products
WHERE unit_price < 799 OR unit_price > 1299;


SELECT *
FROM products
WHERE category = 'Electronics' OR category = 'Apparel';


SELECT *
FROM products
WHERE category IN ('Electronics', 'Apparel');


SELECT *
FROM products
WHERE category NOT IN ('Electronics', 'Apparel');


SELECT *
FROM products
WHERE category <> 'Electronics' AND  category <> 'Apparel';


SELECT 5 IN (3, NULL);


SELECT 3 IN (3, NULL);


SELECT 3 NOT IN (3, NULL);


SELECT 5 NOT IN (3, NULL);


SELECT COUNT(*)
FROM orders;


SELECT COUNT(coupon_code)
FROM orders;


SELECT COUNT(DISTINCT coupon_code)
FROM orders;


SELECT *
FROM orders;


SELECT AVG(unit_price)
FROM products;


SELECT order_status, COUNT(*)
FROM orders
GROUP BY order_status;


SELECT DISTINCT order_status
FROM orders;


SELECT category, AVG(unit_price)
FROM products
GROUP BY category;


SELECT payment_method, payment_status, AVG(amount), COUNT(*)
FROM payments
GROUP BY payment_method, payment_status;


SELECT order_status, COUNT(*)
FROM orders
GROUP BY order_status;


SELECT order_status, COUNT(*)
FROM orders
GROUP BY order_status
HAVING COUNT(*) > 6;


SELECT category, AVG(unit_price)
FROM products
GROUP BY category;


SELECT category, COUNT(*)
FROM products
GROUP BY category
HAVING AVG(unit_price) > 1000;


Inner Join - Customers who have placed orders


SELECT *
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;


SELECT *
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50)
);


INSERT INTO employees VALUES
(1, 'Keerti'),
(2, 'Amit'),
(3, 'Rahul'),
(4, 'Priya');


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    employee_id INT
);


INSERT INTO projects VALUES
(101, 'E-Commerce Platform', 1),
(102, 'Payment Gateway', 2),
(103, 'AI Coding Assistant', 5);


SELECT * FROM employees;
SELECT * FROM projects;


-- Inner Join - Employees assigned to projects
-- Only matching rows


SELECT *
FROM employees e
INNER JOIN projects p
    ON e.employee_id = p.employee_id;


-- Left Join - All Employees


SELECT *
FROM employees e
LEFT JOIN projects p
    ON e.employee_id = p.employee_id;


-- Right Join - All Employees


SELECT *
FROM projects p
RIGHT JOIN employees e
    ON e.employee_id = p.employee_id;


-- Right Join - All Projects


SELECT *
FROM employees e
RIGHT JOIN projects p
    ON e.employee_id = p.employee_id;


-- Full Outer Join - All Rows


SELECT *
FROM employees e
FULL OUTER JOIN projects p
    ON e.employee_id = p.employee_id;


-- Cross Join

SELECT *
FROM employees
CROSS JOIN projects;

























