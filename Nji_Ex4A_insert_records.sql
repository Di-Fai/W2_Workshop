USE lana_dog_walking;
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
INSERT INTO Clients (client_id, first_name, last_name, phone, email, address) VALUES
(1, 'Maya', 'Johnson', '302-555-0184', 'maya.johnson@example.com', '125 Maple St, Newark, DE'),
(2, 'Ethan', 'Carter', '302-555-0217', 'ethan.carter@example.com', '48 Oak Ave, Wilmington, DE'),
(3, 'Sofia', 'Martinez', '302-555-0349', 'sofia.martinez@example.com', '210 Pine Rd, Dover, DE'),
(4, 'Liam', 'Bennett', '302-555-0462', 'liam.bennett@example.com', '77 Cedar Ln, Middletown, DE'),
(5, 'Ava', 'Collins', '302-555-0578', 'ava.collins@example.com', '15 Birch Dr, Smyrna, DE'),
(6, 'Noah', 'Reed', '302-555-0631', 'noah.reed@example.com', '332 Walnut St, Bear, DE'),
(7, 'Isabella', 'Turner', '302-555-0745', 'isabella.turner@example.com', '89 Willow Way, New Castle, DE'),
(8, 'Mason', 'Parker', '302-555-0856', 'mason.parker@example.com', '164 Spruce Ct, Milford, DE'),
(9, 'Olivia', 'Hayes', '302-555-0963', 'olivia.hayes@example.com', '53 Chestnut Blvd, Seaford, DE'),
(10, 'James', 'Brooks', '302-555-1074', 'james.brooks@example.com', '241 Dogwood Pl, Georgetown, DE'),
(11, 'Charlotte', 'Price', '302-555-1189', 'charlotte.price@example.com', '68 Magnolia Ter, Elsmere, DE');

INSERT INTO Dogs (dog_id, dog_name, breed, age, client_id) VALUES
(1, 'Rocky', 'Labrador Retriever', 4, 1),
(2, 'Bella', 'Golden Retriever', 3, 2),
(3, 'Max', 'German Shepherd', 5, 3),
(4, 'Luna', 'Beagle', 2, 4),
(5, 'Charlie', 'Poodle', 6, 5),
(6, 'Daisy', 'French Bulldog', 4, 6),
(7, 'Cooper', 'Boxer', 5, 7),
(8, 'Milo', 'Cocker Spaniel', 3, 8),
(9, 'Sadie', 'Shih Tzu', 7, 9),
(10, 'Teddy', 'Siberian Husky', 2, 10),
(11, 'Bailey', 'Border Collie', 4, 11);

INSERT INTO Walks (walk_id, walk_date, walk_time, duration_minutes, notes) VALUES
(1, '2026-04-18', '09:00:00', 30, 'Morning neighborhood walk with leash practice'),
(2, '2026-04-18', '11:30:00', 45, 'Park walk with water break halfway through'),
(3, '2026-04-18', '15:00:00', 30, 'Afternoon potty break and short exercise walk'),
(4, '2026-04-19', '08:00:00', 60, 'Long morning walk on the trail'),
(5, '2026-04-19', '10:15:00', 20, 'Quick midday relief walk'),
(6, '2026-04-19', '13:30:00', 40, 'Neighborhood walk with sniffing time'),
(7, '2026-04-20', '09:15:00', 35, 'Morning walk focused on loose-leash behavior'),
(8, '2026-04-20', '12:45:00', 50, 'Group walk at the local park'),
(9, '2026-04-20', '16:00:00', 30, 'Afternoon walk before dinner'),
(10, '2026-04-21', '08:30:00', 45, 'Energy-release walk with light jogging'),
(11, '2026-04-21', '17:15:00', 25, 'Evening walk around the block');

INSERT INTO Walk_Dogs (walk_dog_id, walk_id, dog_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 8, 11),
(10, 9, 9),
(11, 10, 10);



