USE db_q4;

CREATE TABLE `ORDER` (
    Order_ID INT PRIMARY KEY,
    Date_Order DATE,
    Good_Type VARCHAR(255),
    Good_Amount DECIMAL(15, 2),
    Client_ID INT
);

CREATE TABLE `ORDER_DELIVERY` (
    Order_ID INT PRIMARY KEY,
    Date_Delivery DATE,
    Delivery_Employee_Code VARCHAR(50)
);

INSERT INTO `ORDER` (Order_ID, Date_Order, Good_Type, Good_Amount, Client_ID) VALUES
(1, '2023-01-05', 'Computer', 10000000, 88),
(2, '2023-02-10', 'Laptop', 8000000, 88),
(3, '2023-03-15', 'Monitor', 3000000, 88),
(4, '2023-04-20', 'Printer', 2000000, 88),
(5, '2023-05-25', 'Keyboard', 500000, 88),
(6, '2023-06-30', 'Mouse', 300000, 88),
(7, '2023-07-05', 'Tablet', 1500000, 88),
(8, '2023-08-10', 'Smartphone', 1200000, 88),
(9, '2023-09-15', 'Headset', 600000, 88),
(10, '2023-10-20', 'Camera', 5000000, 88),
(11, '2023-11-25', 'Speaker', 700000, 88),
(12, '2023-12-30', 'Watch', 900000, 88),

(13, '2023-01-07', 'Computer', 10000000, 123),
(14, '2023-02-12', 'Laptop', 8000000, 123),
(15, '2023-03-17', 'Monitor', 3000000, 123),
(16, '2023-04-22', 'Printer', 2000000, 123),
(17, '2023-05-27', 'Keyboard', 500000, 123),
(18, '2023-07-02', 'Mouse', 300000, 123),
(19, '2023-08-07', 'Tablet', 1500000, 123),
(20, '2023-09-12', 'Smartphone', 1200000, 123),
(21, '2023-10-17', 'Headset', 600000, 123),
(22, '2023-11-22', 'Camera', 5000000, 123),
(23, '2023-12-27', 'Speaker', 700000, 123),
(24, '2023-01-09', 'Watch', 900000, 123),

(25, '2023-01-11', 'Computer', 10000000, 10),
(26, '2023-02-14', 'Laptop', 8000000, 10),
(27, '2023-03-19', 'Monitor', 3000000, 10),
(28, '2023-04-24', 'Printer', 2000000, 10),
(29, '2023-05-29', 'Keyboard', 500000, 10),
(30, '2023-06-04', 'Mouse', 300000, 10),
(31, '2023-07-09', 'Tablet', 1500000, 10),
(32, '2023-08-14', 'Smartphone', 1200000, 10),
(33, '2023-09-19', 'Headset', 600000, 10),
(34, '2023-10-24', 'Camera', 5000000, 10),
(35, '2023-11-29', 'Speaker', 700000, 10),
(36, '2023-12-04', 'Watch', 900000, 10);
