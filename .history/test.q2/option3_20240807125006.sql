-- Normalized Approach
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Addresses (
    Address_ID INT PRIMARY KEY,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Zip_Code VARCHAR(10),
    Country VARCHAR(255)
);

CREATE TABLE Customer_Addresses (
    Customer_ID INT,
    Address_ID INT,
    Start_Date DATE,
    End_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Address_ID) REFERENCES Addresses(Address_ID),
    PRIMARY KEY (Customer_ID, Address_ID, Start_Date)
);
