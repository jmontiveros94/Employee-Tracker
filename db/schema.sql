DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;

--Creates the Table of department and shows each one by it's primary key which is auto incremented
--The VARCHAR cannot exceed 30 characters and it cannot be null
CREATE TABLE
    department (
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
        department_name VARCHAR(30) NOT NULL
    );

-- Same thing for the role table but requires decimal values and a department id thats in the 
-- form of an integer. It also references the department table's id requirement
CREATE TABLE
    role (
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
        title VARCHAR(30) NOT NULL,
        salary DECIMAL(10, 2) NOT NULL,
        department_id INTEGER,
        -- This will reference the department table and the id
        -- column in the department table
        Foreign Key (department_id) REFERENCES department(id)
        ON DELETE CASCADE
    );

-- Same thing for the employee table 
CREATE TABLE
    employee (
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
        first_name VARCHAR(30) NOT NULL,
        last_name VARCHAR(30) NOT NULL,
        role_id INTEGER,
        manager_id INTEGER,
        -- This will reference the role table and the id 
        -- column in the role table
        Foreign Key (role_id) REFERENCES role(id)
        ON DELETE CASCADE,
        Foreign Key (manager_id) REFERENCES employee(id)
        ON DELETE CASCADE
    );