use car_rental_system;
-- 1. Vehicle Table
CREATE TABLE Vehicle (
    vehicleID INT PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    year INT,
    dailyRate DECIMAL(10,2),
    status VARCHAR(20), -- 'available' or 'notAvailable'
    passengerCapacity INT,
    engineCapacity VARCHAR(20)
);

-- 2. Customer Table
CREATE TABLE Customer (
    customerID INT PRIMARY KEY,
    firstName VARCHAR(100),
    lastName VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phoneNumber VARCHAR(20)
);

-- 3. Lease Table
CREATE TABLE Lease (
    leaseID INT PRIMARY KEY,
    vehicleID INT,
    customerID INT,
    startDate DATE,
    endDate DATE,
    type VARCHAR(20), -- 'Daily' or 'Monthly'
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- 4. Payment Table
CREATE TABLE Payment (
    paymentID INT PRIMARY KEY,
    leaseID INT,
    paymentDate DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (leaseID) REFERENCES Lease(leaseID)
);


-- DATA INSERTION
INSERT INTO Vehicle VALUES
(1, 'Toyota', 'Innova', 2022, 2500.00, 'available', 7, '2.4L'),
(2, 'Honda', 'City', 2021, 1800.00, 'notAvailable', 5, '1.5L');

INSERT INTO Customer VALUES
(101, 'Arun', 'Kumar', 'arun@example.com', '9876543210');

INSERT INTO Lease VALUES
(201, 1, 101, '2024-06-01', '2024-06-10', 'Daily');

INSERT INTO Payment VALUES
(301, 201, '2024-06-02', 25000.00);



-- More vehicles
INSERT INTO Vehicle VALUES
(3, 'Hyundai', 'i20', 2020, 1600.00, 'available', 5, '1.2L'),
(4, 'Mahindra', 'XUV700', 2023, 3000.00, 'notAvailable', 7, '2.0L'),
(5, 'Tata', 'Nexon', 2022, 1700.00, 'available', 5, '1.5L');

-- More customers
INSERT INTO Customer VALUES
(103, 'Rohit', 'Verma', 'rohit@example.com', '9087654321'),
(104, 'Neha', 'Rai', 'neha@example.com', '9012345678');

-- More leases
INSERT INTO Lease VALUES
(203, 3, 103, '2024-06-08', '2024-06-12', 'Daily'),
(204, 5, 104, '2024-06-09', '2024-06-15', 'Monthly');

-- More payments
INSERT INTO Payment VALUES
(303, 203, '2024-06-08', 6400.00),
(304, 204, '2024-06-10', 10200.00);

