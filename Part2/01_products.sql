CREATE TABLE IF NOT EXISTS basics.employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    department VARCHAR(50),
    city VARCHAR(50),
    salary NUMERIC(10, 2),
    age INT,
    joining_date DATE,
    bonus NUMERIC(10, 2),
    is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO basics.employees
(full_name, email, department, city, salary, age,
 joining_date, bonus, is_active)
VALUES
('Sam Patil', 'sam@gmail.com', 'IT', 'Pune', 45000, 23, '2025-01-15', 5000, TRUE),
('Priya Sharma', 'priya@gmail.com', 'HR', 'Mumbai', 38000, 26, '2024-06-10', NULL, TRUE),
('Rahul More', 'rahul@gmail.com', 'IT', 'Hyderabad', 55000, 28, '2023-03-20', 8000, TRUE),
('Sneha Jadhav', 'sneha@gmail.com', 'Finance', 'Pune', 42000, 25, '2024-09-01', 3000, FALSE),
('Amit Desai', 'amit@gmail.com', 'Sales', 'Solapur', 30000, 22, '2025-04-12', NULL, TRUE),
('Neha Kulkarni', 'neha@gmail.com', 'IT', 'Mumbai', 65000, 30, '2022-11-05', 10000, TRUE),
('Kiran Pawar', 'kiran@gmail.com', 'HR', 'Pune', 35000, 24, '2025-02-18', 2000, FALSE),
('Pooja More', 'pooja@gmail.com', 'Sales', 'Hyderabad', 40000, 27, '2023-08-25', NULL, TRUE),
('Vijay Shinde', 'vijay@gmail.com', 'Finance', 'Solapur', 48000, 29, '2022-07-14', 6000, TRUE),
('Anita Joshi', 'anita@gmail.com', 'IT', 'Pune', 52000, 26, '2024-01-08', 4000, TRUE);