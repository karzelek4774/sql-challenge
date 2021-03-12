--Drop table if exists

DROP TABLE Departments;
DROP TABLE Titles;
DROP TABLE Employees;
DROP TABLE Salaries;
DROP TABLE Department_Employees;
DROP TABLE Department_Manager;

--Create tables for raw data to be loaded into

CREATE TABLE Departments (
dept_no VARCHAR,
dept_name VARCHAR,
PRIMARY KEY (dept_no)
);

CREATE TABLE Titles (
title_id VARCHAR,
title VARCHAR,
PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
emp_no INTEGER,
emp_title VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE,
PRIMARY KEY (emp_no)
FOREIGN KEY(emp_title) REFERENCES Titles (title_id);
);

CREATE TABLE Salaries (
emp_no INTEGER,
salary MONEY,
FOREIGN KEY(emp_NO) REFERENCES Employees (emp_no);
);

CREATE TABLE Department_Employees (
emp_no INTEGER,
dept_no VARCHAR,
FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
FOREIGN KEY(dept_no) REFERENCES Departments (dept_no);
);

CREATE TABLE Department_Manager (
dept_no VARCHAR,
emp_no INTEGER,
FOREIGN KEY(dept_no) REFERENCES Departments (dept_no);
FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
);

--Import data and view

SELECT *
FROM Departments;

SELECT *
FROM Titles;

SELECT *
FROM Employees;

SELECT *
FROM Salaries;

SELECT *
FROM Department_Employees;

SELECT *
FROM Department_Manager;
