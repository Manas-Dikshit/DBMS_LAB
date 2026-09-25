CREATE DATABASE IF NOT EXISTS Company;
USE Company;

DROP TABLE IF EXISTS Client_Master;
DROP TABLE IF EXISTS Product_Master;
DROP TABLE IF EXISTS Salesman_Master;

CREATE TABLE Client_Master (
    Client_no VARCHAR(6),
    Name VARCHAR(20),
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    City VARCHAR(15),
    Pincode DECIMAL(8,0),
    State VARCHAR(15),
    Baldue DECIMAL(10,2)
);

CREATE TABLE Product_Master (
    Product_no VARCHAR(6),
    Description VARCHAR(15),
    Profit_percent DECIMAL(4,2),
    Unit_measure VARCHAR(10),
    Qty_on_Hand DECIMAL(8,0),
    Re_order_lvl DECIMAL(8,0),
    Sell_price DECIMAL(8,2),
    Cost_price DECIMAL(8,2)
);

CREATE TABLE Salesman_Master (
    Sales_man_no VARCHAR(6),
    Sales_man_name VARCHAR(20),
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    City VARCHAR(20),
    Pincode DECIMAL(8,0),
    State VARCHAR(20),
    Sal_amt DECIMAL(8,2),
    TGTTOGET DECIMAL(6,2),
    Ytd_sales DECIMAL(6,2),
    Remarks VARCHAR(60)
);

SHOW TABLES;

USE Company;

INSERT INTO Client_Master
(Client_no, Name, City, Pincode, State, Baldue)
VALUES
('C00001', 'Rashmi Dash', 'Sundargarh', 700054, 'Odisha', 15000),
('C00002', 'Surya Nanda', 'Sambalpur', 780001, 'Odisha', 0),
('C00003', 'Golu Acharya', 'Rourkela', 400057, 'Odisha', 5000),
('C00004', 'Mukesh Sharma', 'Bhubaneswar', 560001, 'Odisha', 0),
('C00005', 'Bhawani Bansal', 'Cuttack', 400060, 'Odisha', 2000),
('C00006', 'Kamal Thaty', 'Bolangir', 560050, 'Odisha', 0);

INSERT INTO Product_Master
(Product_no, Description, Profit_percent, Unit_measure,
 Qty_on_Hand, Re_order_lvl, Sell_price, Cost_price)
VALUES
('P00001', 'T-Shirts', 5, 'Piece', 200, 50, 350, 250),
('P0345',  'Shirts', 6, 'Piece', 150, 50, 500, 350),
('P06754', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450),
('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500),
('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550),
('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450),
('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250),
('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175),
('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);

INSERT INTO Salesman_Master
(Sales_man_no, Sales_man_name, Address1, Address2,
 City, Pincode, State, Sal_amt, TGTTOGET, Ytd_sales, Remarks)
VALUES
('S00001', 'Aman',   'A/14', 'Sahid nagar', 'BBSR', 400002, 'Odisha', 3000, 100, 50,  'Good'),
('S00002', 'Omkar',  '65',   'Burla',        'SBP',  400001, 'Odisha', 3000, 200, 100, 'Good'),
('S00003', 'Raj',    'P-7',  'Ainthapali',   'SBP',  400032, 'Odisha', 3000, 200, 100, 'Good'),
('S00004', 'Ashish', 'A/5',  'Sect. -2',     'RKL',  400044, 'Odisha', 3500, 200, 150, 'Good');

USE Company;

ALTER TABLE Client_Master
MODIFY COLUMN Name VARCHAR(30);

ALTER TABLE Client_Master
ADD Phone VARCHAR(10);

INSERT INTO Client_Master
(Client_no, Name, City, Pincode, State, Baldue, Phone)
VALUES
('C00007', 'Rahul', 'Keonjhar', 758001, 'Odisha', 2000, '9876543210');

SELECT * FROM Client_Master;

USE Company;

SELECT * FROM Client_Master;

DROP DATABASE IF EXISTS dbms_lab;
CREATE DATABASE dbms_lab;
USE dbms_lab;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT
);

USE dbms_lab;

INSERT INTO departments VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'Mechanical'),
(4, 'Civil');

INSERT INTO students VALUES
(101, 'Rahul', 1),
(102, 'Amit', 2),
(103, 'Priya', 1),
(104, 'Sneha', 5);

USE dbms_lab;

SELECT
    students.student_id,
    students.student_name,
    departments.dept_name
FROM students
INNER JOIN departments
ON students.dept_id = departments.dept_id;

USE dbms_lab;

SELECT
    students.student_id,
    students.student_name,
    departments.dept_name
FROM students
LEFT JOIN departments
ON students.dept_id = departments.dept_id;

USE dbms_lab;

SELECT
    students.student_id,
    students.student_name,
    departments.dept_name
FROM students
RIGHT JOIN departments
ON students.dept_id = departments.dept_id;

USE dbms_lab;

SELECT
    students.student_id,
    students.student_name,
    departments.dept_name
FROM students
LEFT JOIN departments
ON students.dept_id = departments.dept_id

UNION

SELECT
    students.student_id,
    students.student_name,
    departments.dept_name
FROM students
RIGHT JOIN departments
ON students.dept_id = departments.dept_id;

SHOW DATABASES;
