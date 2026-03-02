CREATE DATABASE products;
USE products;
    CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT,
    date_added DATE
);
INSERT INTO product(name, category, price, stock_quantity, date_added) VALUES
('iPhone 15', 'Electronics', 30000, 15, '2025-01-10'),
('Samsung TV 55 inch', 'Electronics', 25000, 8, '2025-01-15'),
('HP Laptop', 'Electronics', 20000, 12, '2025-02-01'),
('Office Chair', 'Furniture', 3500, 20, '2025-02-10'),
('Wooden Desk', 'Furniture', 7000, 5, '2025-02-12'),
('Air Conditioner', 'Electronics', 18000, 6, '2025-02-20');

SELECT* FROM product
WHERE category="Electronics"
ORDER BY price DESC
LIMIT 3;

SELECT name ,price FROM product
ORDER BY price DESC;

SELECT category,
 COUNT(*) AS total_products,
 AVG(price) AS average_price,
 SUM(price * stock_quantity) AS total_stock_value
FROM product
GROUP BY category
HAVING COUNT(*) > 5;

SELECT UPPER(name)
FROM product;

SELECT name, SUBSTRING(name, 1, 10) AS short_desc
FROM product;

SELECT name, date_added,
DATEDIFF(NOW(), date_added) AS days_since_added
FROM product;

ALTER TABLE product ADD discount_rate DECIMAL(5, 2);
INSERT INTO product(name, category, price, stock_quantity, date_added)
VALUES ('*****', 'Accessories', 120, 15, '2026-03-02');
DELETE FROM product WHERE stock_quantity = 0;
SELECT* FROM product;












CREATE TABLE doctors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10, 2),
    consultations_count INT
);

INSERT INTO doctors (name, specialization, hire_date, salary, consultations_count) VALUES
('Dr. Ahmed Hassan', 'Cardiology', '2020-03-15', 30000, 250),
('Dr. Sara Ali', 'Dermatology', '2021-07-10', 22000, 180),
('Dr. Mohamed Samy', 'Neurology', '2019-01-20', 35000, 320),
('Dr. Nour Khaled', 'Pediatrics', '2022-05-05', 20000, 150),
('Dr. Omar Tarek', 'Orthopedics', '2018-11-12', 40000, 410),
('Dr. Lina Adel', 'Dentistry', '2023-02-18', 18000, 90),
('Dr. Youssef Nabil', 'Cardiology', '2017-09-25', 45000, 500);

CREATE TABLE patients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    admission_date DATE,
    room_type VARCHAR(50),
    bill_amount DECIMAL(10, 2),
    status VARCHAR(20)
);


INSERT INTO patients (name, age, gender, admission_date, room_type, bill_amount, status) VALUES
('Ali Mohamed', 45, 'Male', '2025-02-10', 'Single', 12000, 'Admitted'),
('Sara Khaled', 30, 'Female', '2025-02-12', 'Double', 8000, 'Discharged'),
('Mohamed Samir', 60, 'Male', '2025-01-20', 'ICU', 25000, 'Admitted'),
('Nour Hossam', 5, 'Female', '2025-03-01', 'Pediatrics', 5000, 'Discharged'),
('Omar Tarek', 50, 'Male', '2025-02-25', 'Single', 15000, 'Admitted'),
('Lina Adel', 28, 'Female', '2025-03-03', 'Double', 7000, 'Discharged'),
('Youssef Nabil', 40, 'Male', '2025-01-30', 'Single', 10000, 'Admitted');



SELECT*FROM doctors;

SELECT name,specialization,salary FROM doctors
WHERE hire_date>'2022-01-01'
ORDER BY salary DESC
LIMIT 5;

SELECT room_type ,count(*),
MAX(bill_amount),MIN(bill_amount),
SUM(bill_amount)
FROM patients
GROUP BY room_type
HAVING SUM(bill_amount)>5000;






SELECT name,LENGTH(name),
DATEDIFF(CURDATE(), admission_date) AS days_in_hospital
FROM patients;


ALTER TABLE doctors ADD email VARCHAR(100);



DELETE FROM patients 
WHERE status ='Discharged';

ALTER TABLE patients MODIFY bill_amount DECIMAL(10, 2);