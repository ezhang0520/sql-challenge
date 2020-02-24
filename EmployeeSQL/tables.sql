create table departments (
	dept_no VARCHAR(5) primary key, 
	dept_name VARCHAR(30) unique not NULL
);

copy departments(dept_no, dept_name)
from '/Users/elliezhang/Desktop/GT-ATL-DATA-PT-12-2019-U-C/Homework/09-SQL/Instructions/data/departments.csv' DELIMITER',' CSV HEADER;

select * from departments;

create table dept_emp (
	id SERIAL primary key,
	dept_no VARCHAR(5),
	emp_no INT,
	from_date DATE,
	to_date DATE	
);

copy dept_emp(emp_no, dept_no, from_date, to_date)
from '/Users/elliezhang/Desktop/GT-ATL-DATA-PT-12-2019-U-C/Homework/09-SQL/Instructions/data/dept_emp.csv' DELIMITER',' CSV HEADER;

select * from dept_emp;

create table dept_manager (
	id SERIAL primary key,
	dept_no VARCHAR(5),
	emp_no INT,
	from_date DATE,
	to_date DATE
);

copy dept_manager(dept_no, emp_no, from_date, to_date)
from '/Users/elliezhang/Desktop/GT-ATL-DATA-PT-12-2019-U-C/Homework/09-SQL/Instructions/data/dept_manager.csv' DELIMITER',' CSV HEADER;

select * from dept_manager;

create table employee (
	emp_no INT primary key,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender CHAR(1),
	hire_date DATE
);

copy employee(emp_no, birth_date, first_name, last_name, gender, hire_date)
from '/Users/elliezhang/Desktop/GT-ATL-DATA-PT-12-2019-U-C/Homework/09-SQL/Instructions/data/employees.csv' DELIMITER',' CSV HEADER;

select * from employees;

create table salaries (
	id SERIAL primary key,
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE
);

copy salaries(emp_no, salary, from_date, to_date)
from '/Users/elliezhang/Desktop/GT-ATL-DATA-PT-12-2019-U-C/Homework/09-SQL/Instructions/data/salaries.csv' DELIMITER',' CSV HEADER;

select * from salaries;

create table titles (
	id SERIAL primary key,
	emp_no INT,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE
);

copy titles(emp_no, title, from_date, to_date)
from '/Users/elliezhang/Desktop/GT-ATL-DATA-PT-12-2019-U-C/Homework/09-SQL/Instructions/data/titles.csv' DELIMITER',' CSV HEADER;

select * from titles;