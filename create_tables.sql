CREATE TABLE employee (
    employee_id   INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(50) NOT NULL,
    email         VARCHAR(100) UNIQUE,
    phone_number  INT(15),
    joining_date  DATE
);