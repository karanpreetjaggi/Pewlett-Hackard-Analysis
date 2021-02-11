-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
       dept_no VARCHAR(4) NOT NULL,
       dept_name VARCHAR(40)NOT NULL,
       PRIMARY KEY (dept_no),
       UNIQUE (dept_name)
);

CREATE TABLE employee (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
   dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE title(
    emp_no INT NOT NULL,
    title VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employee (emp_no),
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_employee(
     emp_no INT NOT NULL,
     dept_no VARCHAR(4) NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
     FOREIGN KEY(emp_no) REFERENCES employee (emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
     PRIMARY KEY (emp_no, dept_no)
);

select * from dept_manager;



select first_name, last_name 
from employee
where birth_date between '1952-01-01' AND '1955-12-31';


SELECT first_name, last_name
FROM employee
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT first_name, last_name
FROM employee
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

SELECT first_name, last_name
FROM employee
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

SELECT first_name, last_name
FROM employee
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

--Retirement Eligibility
select first_name, last_name 
from employee
where (birth_date between '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
select count(first_name)
from employee
where (birth_date between '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


SELECT first_name, last_name
INTO retirement_info
FROM employee
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


