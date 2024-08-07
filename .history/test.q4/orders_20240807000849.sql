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
-- Dữ liệu cho năm 2019
(1, '2019-01-10', 'Computer', 10000000, 88),
(2, '2019-02-15', 'Laptop', 8000000, 88),
(3, '2019-03-20', 'Monitor', 3000000, 88),
(4, '2019-04-25', 'Printer', 2000000, 88),
(5, '2019-05-30', 'Keyboard', 500000, 88),
(6, '2019-06-05', 'Mouse', 300000, 88),
(7, '2019-07-10', 'Tablet', 1500000, 88),
(8, '2019-08-15', 'Smartphone', 1200000, 88),
(9, '2019-09-20', 'Headset', 600000, 88),
(10, '2019-10-25', 'Camera', 5000000, 88),
(11, '2019-11-30', 'Speaker', 700000, 88),
(12, '2019-12-05', 'Watch', 900000, 88),

-- Dữ liệu cho năm 2020
(13, '2020-01-10', 'Computer', 10000000, 123),
(14, '2020-02-15', 'Laptop', 8000000, 123),
(15, '2020-03-20', 'Monitor', 3000000, 123),
(16, '2020-04-25', 'Printer', 2000000, 123),
(17, '2020-05-30', 'Keyboard', 500000, 123),
(18, '2020-06-05', 'Mouse', 300000, 123),
(19, '2020-07-10', 'Tablet', 1500000, 123),
(20, '2020-08-15', 'Smartphone', 1200000, 123),
(21, '2020-09-20', 'Headset', 600000, 123),
(22, '2020-10-25', 'Camera', 5000000, 123),
(23, '2020-11-30', 'Speaker', 700000, 123),
(24, '2020-12-05', 'Watch', 900000, 123),

-- Dữ liệu cho năm 2021
(25, '2021-01-10', 'Computer', 10000000, 10),
(26, '2021-02-15', 'Laptop', 8000000, 10),
(27, '2021-03-20', 'Monitor', 3000000, 10),
(28, '2021-04-25', 'Printer', 2000000, 10),
(29, '2021-05-30', 'Keyboard', 500000, 10),
(30, '2021-06-05', 'Mouse', 300000, 10),
(31, '2021-07-10', 'Tablet', 1500000, 10),
(32, '2021-08-15', 'Smartphone', 1200000, 10),
(33, '2021-09-20', 'Headset', 600000, 10),
(34, '2021-10-25', 'Camera', 5000000, 10),
(35, '2021-11-30', 'Speaker', 700000, 10),
(36, '2021-12-05', 'Watch', 900000, 10),

-- Dữ liệu cho năm 2022
(37, '2022-01-10', 'Computer', 10000000, 88),
(38, '2022-02-15', 'Laptop', 8000000, 88),
(39, '2022-03-20', 'Monitor', 3000000, 88),
(40, '2022-04-25', 'Printer', 2000000, 88),
(41, '2022-05-30', 'Keyboard', 500000, 88),
(42, '2022-06-05', 'Mouse', 300000, 88),
(43, '2022-07-10', 'Tablet', 1500000, 88),
(44, '2022-08-15', 'Smartphone', 1200000, 88),
(45, '2022-09-20', 'Headset', 600000, 88),
(46, '2022-10-25', 'Camera', 5000000, 88),
(47, '2022-11-30', 'Speaker', 700000, 88),
(48, '2022-12-05', 'Watch', 900000, 88),

-- Dữ liệu cho năm 2023
(49, '2023-01-10', 'Computer', 10000000, 123),
(50, '2023-02-15', 'Laptop', 8000000, 123),
(51, '2023-03-20', 'Monitor', 3000000, 123),
(52, '2023-04-25', 'Printer', 2000000, 123),
(53, '2023-05-30', 'Keyboard', 500000, 123),
(54, '2023-06-05', 'Mouse', 300000, 123),
(55, '2023-07-10', 'Tablet', 1500000, 123),
(56, '2023-08-15', 'Smartphone', 1200000, 123),
(57, '2023-09-20', 'Headset', 600000, 123),
(58, '2023-10-25', 'Camera', 5000000, 123),
(59, '2023-11-30', 'Speaker', 700000, 123),
(60, '2023-12-05', 'Watch', 900000, 123),

-- Dữ liệu cho năm 2024
(61, '2024-01-10', 'Computer', 10000000, 10),
(62, '2024-02-15', 'Laptop', 8000000, 10),
(63, '2024-03-20', 'Monitor', 3000000, 10),
(64, '2024-04-25', 'Printer', 2000000, 10),
(65, '2024-05-30', 'Keyboard', 500000, 10),
(66, '2024-06-05', 'Mouse', 300000, 10),
(67, '2024-07-10', 'Tablet', 1500000, 10),
(68, '2024-08-15', 'Smartphone', 1200000, 10),
(69, '2024-09-20', 'Headset', 600000, 10),
(70, '2024-10-25', 'Camera', 5000000, 10),
(71, '2024-11-30', 'Speaker', 700000, 10),
(72, '2024-12-05', 'Watch', 900000, 10);

INSERT INTO `ORDER_DELIVERY` (Order_ID, Date_Delivery, Delivery_Employee_Code) VALUES
-- Dữ liệu cho năm 2019
(1, '2019-01-12', '1a'),
(2, '2019-02-18', '2b'),
(3, '2019-03-22', '3c'),
(4, '2019-04-28', '4d'),
(5, '2019-05-31', '5e'),
(6, '2019-06-07', '6f'),
(7, '2019-07-12', '7g'),
(8, '2019-08-17', '8h'),
(9, '2019-09-22', '9i'),
(10, '2019-10-27', '10j'),
(11, '2019-11-30', '11k'),
(12, '2019-12-07', '12l'),

-- Dữ liệu cho năm 2020
(13, '2020-01-12', '13m'),
(14, '2020-02-18', '14n'),
(15, '2020-03-22', '15o'),
(16, '2020-04-28', '16p'),
(17, '2020-05-31', '17q'),
(18, '2020-06-07', '18r'),
(19, '2020-07-12', '19s'),
(20, '2020-08-17', '20t'),
(21, '2020-09-22', '21u'),
(22, '2020-10-27', '22v'),
(23, '2020-11-30', '23w'),
(24, '2020-12-07', '24x'),

-- Dữ liệu cho năm 2021
(25, '2021-01-12', '25y'),
(26, '2021-02-18', '26z'),
(27, '2021-03-22', '27a'),
(28, '2021-04-28', '28b'),
(29, '2021-05-31', '29c'),
(30, '2021-06-07', '30d'),
(31, '2021-07-12', '31e'),
(32, '2021-08-17', '32f'),
(33, '2021-09-22', '33g'),
(34, '2021-10-27', '34h'),
(35, '2021-11-30', '35i'),
(36, '2021-12-07', '36j'),

-- Dữ liệu cho năm 2022
(37, '2022-01-12', '37k'),
(38, '2022-02-18', '38l'),
(39, '2022-03-22', '39m'),
(40, '2022-04-28', '40n'),
(41, '2022-05-31', '41o'),
(42, '2022-06-07', '42p'),
(43, '2022-07-12', '43q'),
(44, '2022-08-17', '44r'),
(45, '2022-09-22', '45s'),
(46, '2022-10-27', '46t'),
(47, '2022-11-30', '47u'),
(48, '2022-12-07', '48v'),

-- Dữ liệu cho năm 2023
(49, '2023-01-12', '49w'),
(50, '2023-02-18', '50x'),
(51, '2023-03-22', '51y'),
(52, '2023-04-28', '52z'),
(53, '2023-05-31', '53a'),
(54, '2023-06-07', '54b'),
(55, '2023-07-12', '55c'),
(56, '2023-08-17', '56d'),
(57, '2023-09-22', '57e'),
(58, '2023-10-27', '58f'),
(59, '2023-11-30', '59g'),
(60, '2023-12-07', '60h'),

-- Dữ liệu cho năm 2024
(61, '2024-01-12', '61i'),
(62, '2024-02-18', '62j'),
(63, '2024-03-22', '63k'),
(64, '2024-04-28', '64l'),
(65, '2024-05-31', '65m'),
(66, '2024-06-07', '66n'),
(67, '2024-07-12', '67o'),
(68, '2024-08-17', '68p'),
(69, '2024-09-22', '69q'),
(70, '2024-10-27', '70r'),
(71, '2024-11-30', '71s'),
(72, '2024-12-07', '72t');
