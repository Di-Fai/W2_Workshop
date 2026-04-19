DROP SCHEMA IF EXISTS lana_dog_walking; 
CREATE SCHEMA lana_dog_walking; 
USE lana_dog_walking;
-- Create CLIENTS table
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

-- Create DOGS table
CREATE TABLE Dogs (
    DogID INT PRIMARY KEY AUTO_INCREMENT,
    DogName VARCHAR(50),
    Breed VARCHAR(50),
    Age INT,
    WeightLBS INT,
    Temperament VARCHAR(50),
    ClientID INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

-- Create WALKS table
CREATE TABLE Walks (
    WalkID INT PRIMARY KEY AUTO_INCREMENT,
    DogID INT,
    WalkDate DATE,
    WalkTime TIME,
    DurationInMinutes INT,
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);

-- Create PAYMENTS table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    DogID INT,
    Amount DECIMAL(8,2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);

SHOW TABLES;
DESCRIBE Clients;
DESCRIBE Dogs;
DESCRIBE Walks;
DESCRIBE Payments;
