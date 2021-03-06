DROP DATABASE IF EXISTS myCompany_db;

CREATE DATABASE myCompany_db;
USE myCompany_db;

--Add Department table--
CREATE TABLE department(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30)
);

--Add Role Table--
CREATE TABLE role(
    id INT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES (department.id) ON DELETE CASCADE
);

--Add Employee Table--
CREATE TABLE employee(
    id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY(role_id)REFERENCES (role_tb.id) ON DELETE CASCADE
);