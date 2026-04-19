USE lana_dog_walking;

USE lana_dog_walking;

INSERT INTO Clients (FirstName, LastName, Phone, Email, Address)
VALUES
('Lana', 'Brooks', '555-101-2001', 'lana.brooks@email.com', '14 Maple Street'),
('Jordan', 'Hill', '555-101-2002', 'jordan.hill@email.com', '22 Oak Avenue'),
('Maya', 'Carter', '555-101-2003', 'maya.carter@email.com', '8 Pine Road'),
('Ethan', 'Lewis', '555-101-2004', 'ethan.lewis@email.com', '47 Cedar Lane'),
('Ava', 'Mitchell', '555-101-2005', 'ava.mitchell@email.com', '91 Birch Street'),
('Noah', 'Reed', '555-101-2006', 'noah.reed@email.com', '13 Willow Drive'),
('Chloe', 'Foster', '555-101-2007', 'chloe.foster@email.com', '66 Elm Court'),
('Liam', 'Bryant', '555-101-2008', 'liam.bryant@email.com', '29 Aspen Way'),
('Grace', 'Simmons', '555-101-2009', 'grace.simmons@email.com', '72 Spruce Circle'),
('Isaac', 'Perry', '555-101-2010', 'isaac.perry@email.com', '101 Walnut Street'),
('Zoe', 'Barnes', '555-101-2011', 'zoe.barnes@email.com', '5 Cherry Lane');

INSERT INTO Dogs (DogName, Breed, Age, WeightLBS, Temperament, ClientID)
VALUES
('Max', 'Golden Retriever', 4, 65, 'Friendly', 1),
('Bella', 'Labrador Retriever', 3, 58, 'Energetic', 2),
('Rocky', 'German Shepherd', 5, 75, 'Protective', 3),
('Luna', 'Beagle', 2, 25, 'Curious', 4),
('Charlie', 'Poodle', 6, 40, 'Calm', 5),
('Daisy', 'Boxer', 4, 55, 'Playful', 6),
('Cooper', 'Siberian Husky', 3, 60, 'Active', 7),
('Milo', 'Shih Tzu', 7, 14, 'Gentle', 8),
('Sadie', 'Border Collie', 2, 45, 'Smart', 9),
('Toby', 'Bulldog', 5, 50, 'Lazy', 10),
('Nala', 'Cocker Spaniel', 1, 22, 'Sweet', 11);

INSERT INTO Walks (DogID, WalkDate, WalkTime, DurationInMinutes)
VALUES
(1, '2026-04-19', '09:00:00', 30),
(2, '2026-04-19', '09:30:00', 45),
(3, '2026-04-19', '10:15:00', 30),
(4, '2026-04-19', '11:00:00', 20),
(5, '2026-04-19', '12:00:00', 40),
(6, '2026-04-19', '01:15:00', 30),
(7, '2026-04-19', '02:00:00', 50),
(8, '2026-04-19', '03:00:00', 25),
(9, '2026-04-19', '04:00:00', 35),
(10, '2026-04-19', '05:00:00', 30),
(11, '2026-04-19', '06:00:00', 45);

INSERT INTO Payments (ClientID, DogID, Amount, PaymentDate, PaymentMethod)
VALUES
(1, 1, 25.00, '2026-04-19', 'Cash'),
(2, 2, 30.00, '2026-04-19', 'Card'),
(3, 3, 28.00, '2026-04-19', 'Cash'),
(4, 4, 20.00, '2026-04-19', 'Venmo'),
(5, 5, 32.00, '2026-04-19', 'Card'),
(6, 6, 26.00, '2026-04-19', 'Cash'),
(7, 7, 35.00, '2026-04-19', 'Zelle'),
(8, 8, 18.00, '2026-04-19', 'Cash'),
(9, 9, 29.00, '2026-04-19', 'Card'),
(10, 10, 24.00, '2026-04-19', 'Venmo'),
(11, 11, 27.00, '2026-04-19', 'Cash');

SELECT * FROM Clients;
SELECT * FROM Dogs;
SELECT * FROM Walks;
SELECT * FROM Payments;