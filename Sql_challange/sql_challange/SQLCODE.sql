CREATE TABLE departments
(
    dept_no CHAR(4) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(35) NOT NULL
);


CREATE TABLE titles
(
    title_id CHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(35) NOT NULL
);

CREATE TABLE employees
(
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR,
    hire_date DATE NOT NULL,
    CONSTRAINT fk_title
        FOREIGN KEY(emp_title_id)
            REFERENCES titles(title_id)
);

CREATE TABLE dept_emp
(
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    CONSTRAINT fk_department
        FOREIGN KEY(dept_no)
            REFERENCES departments(dept_no),
    CONSTRAINT fk_employee
        FOREIGN KEY(emp_no)
            REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager
(
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    CONSTRAINT fk_department
        FOREIGN KEY(dept_no)
            REFERENCES departments(dept_no),
    CONSTRAINT fk_employee
        FOREIGN KEY(emp_no)
            REFERENCES employees(emp_no)
);

CREATE TABLE salaries
(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    CONSTRAINT fk_employee
        FOREIGN KEY(emp_no)
            REFERENCES employees(emp_no)
);
