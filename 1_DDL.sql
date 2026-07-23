-- ================================
-- # DATA DEFINITION LANGUAGE
-- ================================

-- CREATE TABLE

USE company_db;

CREATE TABLE order_items (
	order_item_id	INT PRIMARY KEY AUTO_INCREMENT,
    ordr_id			INT,
    product_id		INT,
    quantity		INT
);

-- ALTER TABLE
-- 1. RENAME COLUMN
ALTER TABLE order_items 
RENAME COLUMN ordr_id TO order_id;


-- 2. ADD COLUMN
ALTER TABLE employees 
ADD COLUMN phone VARCHAR(15);

SELECT * FROM employees;

-- 3. MODIFY COLUMN
ALTER TABLE employees 
MODIFY COLUMN phone VARCHAR(20);

-- 4. DROP COLUMN
ALTER TABLE employees DROP COLUMN phone;
SELECT * FROM employees;

-- 5. RENAME TABLE
ALTER TABLE employees
RENAME TO staff; 

ALTER TABLE staff    -- rename back
RENAME TO employees;

-- TRUNCATE TABLE
SELECT * FROM products;

TRUNCATE TABLE products;

SELECT * FROM products;

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Office Chair', 'Furniture', 6000),
('Wireless Mouse', 'Electronics', 800),
('Standing Desk', 'Furniture', 15000),
('Monitor', 'Electronics', 12000);


-- DELETE ROW
SELECT * FROM products;

DELETE FROM products
WHERE product_id = 2;

SELECT * FROM products;

DELETE FROM products
WHERE product_id IN (1, 3, 4, 5);

SELECT * FROM products;

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Office Chair', 'Furniture', 6000),
('Wireless Mouse', 'Electronics', 800),
('Standing Desk', 'Furniture', 15000),
('Monitor', 'Electronics', 12000);

-- DROP TABLE
SELECT * FROM products;

DROP TABLE products;

SELECT * FROM products; -- products doesn't exist

-- ================================
-- Practice Question
-- ================================
-- 1. Add a column is_active BOOLEAN DEFAULT TRUE to employees
SELECT * FROM employees;

ALTER TABLE employees
ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

SELECT * FROM employees;
 
-- 2. Change products.product_name to allow up to 100 characters.alter
SELECT * FROM products;

ALTER TABLE products
MODIFY COLUMN product_name VARCHAR(100);

-- 3. What's the difference between DROP and TRUNCATE? 
/* 
Drop :- Drop remove all table and database with stucture and entries
Truncate :- Remove all entries but not the structure. Structure remains same.
*/ 

