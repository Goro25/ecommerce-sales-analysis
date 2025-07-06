-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id),
    product_id INT FOREIGN KEY REFERENCES Products(product_id),
    order_date DATE,
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Customers (customer_id, name, email, city, signup_date) VALUES
(1, 'Amit Sharma', 'amit@example.com', 'Mumbai', '2023-01-15'),
(2, 'Sneha Rao', 'sneha@example.com', 'Delhi', '2023-02-10'),
(3, 'Rahul Mehta', 'rahul@example.com', 'Bangalore', '2023-03-05'),
(4, 'Priya Desai', 'priya@example.com', 'Hyderabad', '2023-04-20'),
(5, 'Rohit Kumar', 'rohit@example.com', 'Chennai', '2023-05-12');

INSERT INTO Products (product_id, product_name, category, price) VALUES
(101, 'Wireless Mouse', 'Electronics', 750.00),
(102, 'Bluetooth Speaker', 'Electronics', 1500.00),
(103, 'Running Shoes', 'Footwear', 2200.00),
(104, 'Notebook', 'Stationery', 120.00),
(105, 'Backpack', 'Accessories', 950.00);

INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity, amount) VALUES
(1001, 1, 101, '2023-06-01', 1, 750.00),
(1002, 2, 102, '2023-06-03', 2, 3000.00),
(1003, 1, 104, '2023-06-07', 3, 360.00),
(1004, 3, 103, '2023-06-10', 1, 2200.00),
(1005, 4, 105, '2023-06-15', 1, 950.00),
(1006, 2, 103, '2023-07-01', 1, 2200.00),
(1007, 3, 105, '2023-07-02', 2, 1900.00),
(1008, 5, 101, '2023-07-05', 1, 750.00),
(1009, 1, 102, '2023-07-07', 1, 1500.00),
(1010, 2, 104, '2023-07-10', 5, 600.00);

-- 1) Total Sales by Product
Select P.category,sum(O.amount) as total_sales 
From Products P 
Join Orders O on P.product_id = O.product_id
Group by P.category


