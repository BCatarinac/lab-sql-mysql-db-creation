CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;




CREATE TABLE IF NOT EXISTS Cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20) NOT NULL UNIQUE,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year YEAR,
    Color VARCHAR(30)
);




CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(100),
    City VARCHAR(50),
    StateProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipPostalCode VARCHAR(20)
);




CREATE TABLE IF NOT EXISTS Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Store VARCHAR(100)
);




CREATE TABLE Invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    CarID INT,
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID) 
);


