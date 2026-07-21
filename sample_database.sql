CREATE DATABASE company_db;

USE company_db;

CREATE TABLE departments (
	department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

CREATE TABLE employees (
	employee_id    INT PRIMARY KEY AUTO_INCREMENT,
    first_name     VARCHAR(30) NOT NULL,
    last_name      VARCHAR(30) NOT NULL,
    email          VARCHAR(100) UNIQUE,
    hire_code      DATE,
    job_title      VARCHAR(50),
    salary         DECIMAL(10,2),
    department_id  INT,
    manager_id     INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

CREATE TABLE customers(
	customer_id		INT PRIMARY KEY AUTO_INCREMENT, 
    customer_name	VARCHAR(50) NOT NULL,
    city			VARCHAR(40),
    country			VARCHAR(40)
);

CREATE TABLE orders (
	order_id		INT PRIMARY KEY AUTO_INCREMENT,
    customer_id		INT,
    employee_id		INT,
    order_date		DATE,
    amount			DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE products (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name 	VARCHAR(60),
    category 		VARCHAR(40),
    price			DECIMAL(10,2)
);

CREATE TABLE order_items (
	order_item_id 	INT PRIMARY KEY AUTO_INCREMENT,
	order_id		INT,
    product_id		INT,
    quantitiy 		INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES productS(product_id)
);

-- Inserting data

INSERT INTO departments (department_name, location) VALUES
	('Engineering', 'Pune'),
    ('Sales', 'Mumbai'),
    ('Engineering', 'Nagpur'),
    ('Marketing', 'Bengaluru');

ALTER TABLE employees
RENAME COLUMN hire_code TO hire_date;

INSERT INTO employees (first_name, last_name, email, hire_date, job_title, salary, department_id, manager_id) VALUES
	('Rohan', 'Sharma', 'rohan.sharma@co.com', '2019-03-01', 'Engineering Manager', 95000, 1, NULL),
	('Aisha', 'Khan', 'aisha.khan@co.com', '2020-06-15', 'Software Engineer', 62000, 1, 1),
	('Vikram', 'Patel', 'vikram.patel@co.com', '2021-01-10', 'Software Engineer', 58000, 1, 1),	
	('Neha', 'Verma', 'neha.verma@co.com', '2018-09-20', 'Sales Manager', 88000, 2, NULL),
	('Arjun', 'Reddy', 'arjun.reddy@co.com', '2021-07-01', 'Sales Executive', 45000, 2, 4),
	('Priya', 'Nair', 'priya.nair@co.com', '2022-02-14', 'Sales Executive', 43000, 2, 4),
	('Karan', 'Mehta', 'karan.mehta@co.com', '2017-11-05', 'HR Manager', 70000, 3, NULL),
	('Sneha', 'Joshi', 'sneha.joshi@co.com', '2022-08-19', 'HR Executive', 40000, 3, 7),
	('Amit', 'Kumar', 'amit.kumar@co.com', '2023-01-25', 'Marketing Executive', 42000, 4, NULL),
	('Divya', 'Rao', 'divya.rao@co.com', '2020-12-01', 'Senior Engineer', 75000, 1, 1);


INSERT INTO customers (customer_name, city, country) VALUES
('Global Traders', 'Mumbai', 'India'),
('NextGen Retail', 'Delhi', 'India'),
('BluePeak Corp', 'New York', 'USA'),
('Sunrise Foods', 'Nagpur', 'India'),
('TechNova Ltd', 'London', 'UK');


INSERT INTO orders (customer_id, employee_id, order_date, amount) VALUES
(1, 5, '2024-01-10', 15000),
(2, 5, '2024-01-15', 8000),
(1, 6, '2024-02-01', 22000),
(3, 6, '2024-02-10', 50000),
(4, 5, '2024-03-05', 5000),
(5, 6, '2024-03-20', 30000),
(2, 5, '2024-04-01', 12000),
(3, 6, '2024-04-15', 18000);



INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Office Chair', 'Furniture', 6000),
('Wireless Mouse', 'Electronics', 800),
('Standing Desk', 'Furniture', 15000),
('Monitor', 'Electronics', 12000);

ALTER TABLE order_items
RENAME COLUMN quantitiy TO quantity;

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 3, 2), (1, 5, 1), (2, 2, 1), (3, 1, 1),
(4, 1, 1), (4, 4, 1), (5, 3, 3), (6, 1, 1),
(7, 2, 2), (8, 5, 2);


    