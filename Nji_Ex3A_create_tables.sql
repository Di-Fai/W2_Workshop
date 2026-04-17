DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);
CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);
CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    notes VARCHAR(255)
);
CREATE TABLE Walk_Dogs (
    walk_dog_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT,
    dog_id INT,
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);
DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    notes VARCHAR(255)
);

CREATE TABLE Walk_Dogs (
    walk_dog_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT,
    dog_id INT,
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);
