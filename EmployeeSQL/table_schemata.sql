--Create titles table
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

--Create employees table (foreign key coming from title table)
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,	
	sex	VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

--Create salaries table (foreign key coming from employees table)
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Create employee departments table (foreign keys coming from departments and employees)
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--Create department manager table (foreign keys coming from departments and employees)
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

