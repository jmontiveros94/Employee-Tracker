USE employees_db;
INSERT INTO department (department_name)
VALUES ("Marketing"),
       ("Financial Services"),
       ("Human Capital Management"),
       ("Information Technology"),
       ("Financial Accounting");
;
-- This will insert data about each role into the database
INSERT INTO role (title, salary, department_id)
VALUES ("Product Manager", 100000, 1),
       ("Customer Service ", 50000, 1),
       ("Operations Manager", 150000, 2),
       ("Operations Analyst", 75000, 2),
       ("Talent Acquisition Manager", 125000, 3),
       ("HR Specialist", 60000, 3),
       ("IT Director", 175000, 4),
       ("Software Engineer", 85000, 4),
       ("Finance Director", 200000, 5),
       ("Audit Specialist", 100000, 5);

-- This will insert data about each employee into the database
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ethan", "Smith", 1, 1),
       ("Olivia", "Johnson", 2, 1),
       ("Aiden", "Williams", 3, 2),
       ("Sophia", "Jones", 4, 2),
       ("Liam", "Clark", 5, 3),
       ("Emma", "Taylor", 6, 3),
       ("Noah", "Martin", 7, 4),
       ("Ava", "Brown", 8, 4),
       ("Isabella", "Davis", 9, 5),
       ("Mason", "Wilson", 10, 5);

