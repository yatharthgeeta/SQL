-- ================================
-- # DATA MANIPULATION LANGUAGE
-- ================================

USE company_db;

-- INSERT

SELECT * FROM departments;

INSERT INTO departments (department_name, location) 	-- Inserting one row 
VALUES ('Finance', 'Chennai');

SELECT * FROM departments;

SELECT * FROM products;

INSERT INTO products(product_name, category, price)		-- Inserting many rows
VALUES 	('Keyboard', 'Electronics', 1500),
		('Bookshelf', 'Furniture', 4000);

SELECT * FROM products;

-- UPDATE
SELECT * FROM products;

UPDATE products SET price = price * 1.5 				-- Updating laptop price by 1.5 times
WHERE product_id = 1;									

SELECT * FROM products;

SELECT * FROM products;

UPDATE products 										-- Update with multiple columns
SET product_name = 'Gaming Laptop', price = 100000
WHERE product_id = 1;

SELECT * FROM products;

-- DELETE

SELECT * FROM products;

DELETE FROM products
WHERE product_id = 7;

SELECT * FROM products;

-- ================================
-- Practice Question
-- ================================

-- 1. Give every Sales department employee a flat Rs. 2000 bonus (add to salay).

SELECT * FROM employees;

SELECT * FROM departments;

UPDATE employees
SET salary = salary + 2000
WHERE department_id = 2;

SELECT * FROM employees;

-- 2. Delete the keyboard product from products.

SELECT * FROM products;

DELETE FROM products
WHERE product_id = 6;

SELECT * FROM products;

-- 3. Insert a new employees: Rahul Sing, Data Analyst, Department _id 1, salary 50000, hired today.

SELECT * FROM employees;

INSERT INTO employees(first_name, last_name, email,  hire_date, job_title, salary, department_id, manager_id)
VALUES 	('Rahul', 'Sing','rahul.sing@co.com', CURDATE(), 'Data Analyst', 50000, 1, 1)

SELECT * FROM employees;

