CREATE DATABASE online_store;
USE online_store;
SHOW DATABASES;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(100),
    stock_quantity INT CHECK (stock_quantity >= 0)
);
INSERT INTO Products (product_id, name, category, stock_quantity)
VALUES 
(1, 'Laptop', 'Electronics', 10),
(2, 'Mouse', 'Electronics', 50),
(3, 'Keyboard', 'Electronics', 30),
(4, 'Headphones', 'Accessories', 20);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    status VARCHAR(50)
);

INSERT INTO Orders (order_id, order_date, status)
VALUES
(101, '2026-03-05', 'Pending'),
(102, '2026-03-06', 'Shipped'),
(103, '2026-03-07', 'Pending');

CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (product_id) REFERENCES Products (product_id)
);

INSERT INTO Order_Items (order_id, product_id, quantity, unit_price)
VALUES
(101, 1, 1, 900),
(101, 2, 2, 20),
(102, 3, 1, 50),
(103, 4, 2, 70);
ALTER Table products
ADD discount DOUBLE;

SELECT * FROM products;

SELECT orders.order_id ,SUM(Order_Items.quantity*Order_Items.unit_price)
FROM orders INNER JOIN  Order_Items
on orders.order_id=Order_Items.order_id
GROUP BY orders.order_id;
