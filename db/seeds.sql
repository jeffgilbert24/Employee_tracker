INSERT INTO department (id, name)
VALUES (1, "Sales"),
       (2, "Engineering"),
       (3, "Legal"),
       (4, "Finance"),
       
INSERT INTO role (id, title, salary, department_id)
VALUES (1, "Salesperson",2000, 1 ),
       (2, "Lead Engineer", 2200, 2),
       (3, "Software Engineer", 2500, 2),
       (4, "Accountant", 2100, 4),
       (3, "Leagle team", 2500, 3),
       

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Mike","Lawery", 1 ),
       (2, "John", "Wick", 2),
       (3, "Gilligan", "Jones", 3),
       (4, "James T", "Kirk", 4),
       (3, "Yogi", "Bear", 3),