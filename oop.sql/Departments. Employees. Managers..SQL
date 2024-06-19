CREATE TABLE departments(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(200)
)

CREATE TABLE employees(
    id INT AUTO-INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    father_name VARCHAR(100),
    salary decimal(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE CASCADE
)

CREATE TABLE Managers(
    id INT AUTO-INCREMENT PRIMARY KEY,
    employee_id INT,
    department_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE
    FOREIGN KEY (department_id) REFERENCES departments(id) on DELETE CASCADE
)
