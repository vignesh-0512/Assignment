CREATE TABLE Customer (

    ConsumerID       BIGINT PRIMARY KEY,

    CustomerName     VARCHAR(50) NOT NULL,

    Email            VARCHAR(100) NOT NULL,

    MobileNumber     VARCHAR(15) NOT NULL,

    UserID           VARCHAR(20) NOT NULL,

    Password         VARCHAR(30) NOT NULL,

    ConfirmPassword  VARCHAR(30) NOT NULL,

    Status           VARCHAR(10) DEFAULT 'Active',

    CHECK (LENGTH(UserID) BETWEEN 5 AND 20),

    CHECK (Status IN ('Active', 'Inactive'))

);



INSERT INTO Customer (ConsumerID, CustomerName, Email, MobileNumber, UserID, Password, ConfirmPassword, Status)

VALUES

(1234567890123, 'Anjali Menon', 'anjali.menon@example.com', '9876543210', 'anjali01', 'Pass@123', 'Pass@123', 'Active'),

(1234567890124, 'Rahul Verma', 'rahul.verma@example.com', '9876543211', 'rahulv', 'Rahul@456', 'Rahul@456', 'Active'),

(1234567890125, 'Sneha Pillai', 'sneha.pillai@example.com', '9876543212', 'sneha_p', 'Sneha#789', 'Sneha#789', 'Inactive'),

(1234567890126, 'Vikram Nair', 'vikram.nair@example.com', '9876543213', 'vikramn', 'Vikr@m12', 'Vikr@m12', 'Active'),

(1234567890127, 'Divya Krishnan', 'divya.krishnan@example.com', '9876543214', 'divyak', 'Divya@99', 'Divya@99', 'Active');



ALTER TABLE Customer

ADD COLUMN Title VARCHAR(10),

ADD COLUMN BillNumber INT;

SELECT

    City,

    AVG(BillAmount) AS AverageBill

FROM CustomerBill

GROUP BY City                                 ORDER BY AverageBill DESC;





SELECT

    City,

    AVG(BillAmount) AS AverageBill

FROM CustomerBill

GROUP BY City

ORDER BY AverageBill DESC

LIMIT 1;

CREATE TABLE CustomerBill (

    ConsumerId INT PRIMARY KEY,

    CustomerName VARCHAR(100) NOT NULL,

    Address VARCHAR(200),

    City VARCHAR(50) NOT NULL,

    BillAmount DECIMAL(10,2) NOT NULL

)

CREATE TABLE Customer (

    ConsumerID       BIGINT PRIMARY KEY,

    CustomerName     VARCHAR(50) NOT NULL,

    Email            VARCHAR(100) NOT NULL,

    MobileNumber     VARCHAR(15) NOT NULL,

    UserID           VARCHAR(20) NOT NULL,

    Password         VARCHAR(30) NOT NULL,

    ConfirmPassword  VARCHAR(30) NOT NULL,

    Status           VARCHAR(10) DEFAULT 'Active',

    CHECK (LENGTH(UserID) BETWEEN 5 AND 20),

    CHECK (Status IN ('Active', 'Inactive'))

);



INSERT INTO Customer (ConsumerID, CustomerName, Email, MobileNumber, UserID, Password, ConfirmPassword, Status)

VALUES

(1234567890123, 'Anjali Menon', 'anjali.menon@example.com', '9876543210', 'anjali01', 'Pass@123', 'Pass@123', 'Active'),

(1234567890124, 'Rahul Verma', 'rahul.verma@example.com', '9876543211', 'rahulv', 'Rahul@456', 'Rahul@456', 'Active'),

(1234567890125, 'Sneha Pillai', 'sneha.pillai@example.com', '9876543212', 'sneha_p', 'Sneha#789', 'Sneha#789', 'Inactive'),

(1234567890126, 'Vikram Nair', 'vikram.nair@example.com', '9876543213', 'vikramn', 'Vikr@m12', 'Vikr@m12', 'Active'),

(1234567890127, 'Divya Krishnan', 'divya.krishnan@example.com', '9876543214', 'divyak', 'Divya@99', 'Divya@99', 'Active');

INSERT INTO CustomerBill (ConsumerId, CustomerName, Address, City, BillAmount) VALUES

(1001, 'Anitha', '12 Anna Nagar', 'Chennai', 1250.50),

(1002, 'Rahul', '45 MG Road', 'Bengaluru', 1850.00),

(1003, 'Divya', '78 RS Puram', 'Coimbatore', 980.75),

(1004, 'Nisha', '10 Velachery', 'Chennai', 1450.25),

(1005, 'Karthik', '22 Indiranagar', 'Bengaluru', 2100.00),

(1006, 'Anitha', '12 Anna Nagar', 'Chennai', 1325.00),

(1007, 'Rahul', '45 MG Road', 'Bengaluru', 1950.50),

(1008, 'Divya', '78 RS Puram', 'Coimbatore', 1100.00),

(1009, 'Nisha', '10 Velachery', 'Chennai', 1500.75),

(1010, 'Karthik', '22 Indiranagar', 'Bengaluru', 2250.25);

SELECT

    CustomerId,

    CustomerName,

    Email

FROM Customer

WHERE CustomerName LIKE '%a'

ORDER BY CustomerName DESC;

CREATE TABLE Consumer (



    ConsumerId INT PRIMARY KEY,



    ConsumerName VARCHAR(100) NOT NULL,



    Address VARCHAR(200),



    City VARCHAR(50),



    MobileNumber VARCHAR(15)



);







CREATE TABLE MonthlyBill (



    BillId INT PRIMARY KEY,



    ConsumerId INT,



    BillMonth VARCHAR(20),



    BillAmount DECIMAL(10,2),



    PaymentStatus VARCHAR(10),



    FOREIGN KEY (ConsumerId) REFERENCES Consumer(ConsumerId)



);







INSERT INTO Consumer VALUES



(101, 'Anitha', 'Anna Nagar', 'Chennai', '9876543210'),



(102, 'Rahul', 'MG Road', 'Bengaluru', '9876543211'),



(103, 'Divya', 'RS Puram', 'Coimbatore', '9876543212'),



(104, 'Nisha', 'Velachery', 'Chennai', '9876543213'),



(105, 'Karthik', 'Indiranagar', 'Bengaluru', '9876543214'),



(106, 'Priya', 'T Nagar', 'Chennai', '9876543215'),



(107, 'Arun', 'Race Course', 'Coimbatore', '9876543216'),



(108, 'Meena', 'Adyar', 'Chennai', '9876543217'),



(109, 'Suresh', 'Whitefield', 'Bengaluru', '9876543218'),



(110, 'Lakshmi', 'Saibaba Colony', 'Coimbatore', '9876543219');







INSERT INTO MonthlyBill VALUES



(201, 101, 'June', 1200.00, 'Paid'),



(202, 102, 'June', 1500.00, 'Unpaid'),



(203, 103, 'June', 950.00, 'Paid'),



(204, 104, 'June', 1800.00, 'Unpaid'),



(205, 105, 'June', 2100.00, 'Paid'),



(206, 106, 'June', 1350.00, 'Unpaid'),



(207, 107, 'June', 990.00, 'Paid'),



(208, 108, 'June', 1650.00, 'Unpaid'),



(209, 109, 'June', 1750.00, 'Paid'),



(210, 110, 'June', 1400.00, 'Unpaid');











SELECT



    ConsumerId,



    ConsumerName



FROM Consumer



WHERE ConsumerId IN (



    SELECT ConsumerId



    FROM MonthlyBill



    WHERE PaymentStatus = 'Unpaid'



);
