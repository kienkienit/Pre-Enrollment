USE db_q3;

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
