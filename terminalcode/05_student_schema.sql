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
