-- QUERIES TO IMPLEMENT

-- Basic CRUD operation in Users 

INSERT INTO Users (full_name, email, phone_number, account_type) VALUES
('Alice Johnson', 'alice.johnson@example.com', '1234567890', 'guest'),
('Bob Smith', 'bob.smith@example.com', '1234567891', 'host'),
('Charlie Davis', 'charlie.davis@example.com', '1234567892', 'guest'),
('David White', 'david.white@example.com', '1234567893', 'host'),
('Emma Wilson', 'emma.wilson@example.com', '1234567894', 'guest'),
('Franklin Harris', 'franklin.harris@example.com', '1234567895', 'host'),
('Grace Martin', 'grace.martin@example.com', '1234567896', 'guest'),
('Henry Clark', 'henry.clark@example.com', '1234567897', 'host'),
('Ivy Lewis', 'ivy.lewis@example.com', '1234567898', 'guest'),
('Jack Walker', 'jack.walker@example.com', '1234567899', 'host');

INSERT INTO Users (full_name, email, phone_number, account_type, signup_date) VALUES
('Laura Scott', 'laura.scott@example.com', '2234567890', 'guest', '2024-12-01 10:15:30'),
('Mike Brown', 'mike.brown@example.com', '2234567891', 'host', '2024-11-20 14:25:00'),
('Nina Adams', 'nina.adams@example.com', '2234567892', 'guest', '2024-10-05 08:45:15'),
('Oscar Green', 'oscar.green@example.com', '2234567893', 'host', '2024-09-18 12:30:45'),
('Paul Carter', 'paul.carter@example.com', '2234567894', 'guest', '2024-08-22 18:05:20'),
('Quincy Hall', 'quincy.hall@example.com', '2234567895', 'host', '2024-07-10 22:40:10'),
('Rachel Evans', 'rachel.evans@example.com', '2234567896', 'guest', '2024-06-15 06:20:50'),
('Sam Turner', 'sam.turner@example.com', '2234567897', 'host', '2024-05-30 09:55:35'),
('Tina Parker', 'tina.parker@example.com', '2234567898', 'guest', '2024-04-25 11:45:05'),
('Umar Nelson', 'umar.nelson@example.com', '2234567899', 'host', '2024-03-12 15:10:25');


SELECT * FROM Users


UPDATE Users SET full_name = "Jack Smith" WHERE user_id=10;
DELETE FROM Users WHERE user_id = 20;

-- Basic CRUD operation in Listings
INSERT INTO Listings (title, description, price_per_night, city, country, number_of_bedrooms, number_of_bathrooms, host_id)
VALUES
    ('Cozy Apartment in Downtown', 'A beautiful one-bedroom apartment in the heart of the city.', 120.00, 'New York', 'USA', 1, 1, 1),
    ('Luxury Villa with Pool', 'Spacious villa with a private pool and ocean view.', 350.00, 'Los Angeles', 'USA', 4, 3, 2),
    ('Charming Cottage in the Countryside', 'Escape the city and relax in this cozy cottage.', 90.50, 'Oxford', 'UK', 2, 1, 3),
    ('Modern Studio near Metro', 'Conveniently located near public transport, perfect for solo travelers.', 75.00, 'Paris', 'France', 1, 1, 4),
    ('Beachfront Bungalow', 'Wake up to the sound of waves in this amazing beachfront stay.', 200.00, 'Phuket', 'Thailand', 2, 2, 5),
    ('Spacious Loft with City View', 'Enjoy stunning city views from this modern loft.', 180.30, 'Toronto', 'Canada', 1, 1, 6),
    ('Traditional Ryokan Experience', 'Experience authentic Japanese hospitality in a traditional ryokan.', 150.00, 'Kyoto', 'Japan', 2, 1, 7),
    ('Penthouse with Rooftop Terrace', 'Luxury penthouse with an amazing rooftop terrace.', 400.75, 'Dubai', 'UAE', 3, 3, 8),
    ('Historic Townhouse', 'Stay in a beautifully restored historic townhouse.', 130.00, 'Rome', 'Italy', 2, 2, 9),
    ('Ski Lodge in the Mountains', 'Perfect for winter sports lovers, right next to the slopes.', 220.00, 'Aspen', 'USA', 3, 2, 10);

INSERT INTO Listings (title, description, price_per_night, city, country, number_of_bedrooms, number_of_bathrooms, host_id)
VALUES
    ('Luxury Apartment in Mumbai', 'A modern 2BHK apartment with a sea view.', 150.00, 'Mumbai', 'India', 2, 2, 11),
    ('Heritage Haveli in Jaipur', 'Stay in a beautiful Rajasthani haveli with traditional decor.', 120.00, 'Jaipur', 'India', 3, 3, 12),
    ('Cozy House in Bangalore', 'A comfortable stay in India’s tech capital.', 100.00, 'Bangalore', 'India', 2, 2, 13),
    ('Beachside Villa in Goa', 'A stunning villa just a few steps from the beach.', 200.00, 'Goa', 'India', 4, 3, 14),
    ('Houseboat in Kerala', 'Experience the beauty of Kerala backwaters on a houseboat.', 180.00, 'Alleppey', 'India', 1, 1, 15),
    ('Hill View Cottage in Manali', 'Perfect getaway in the mountains with a breathtaking view.', 130.00, 'Manali', 'India', 2, 2, 16),
    ('City Studio in Delhi', 'Compact yet comfortable studio apartment in Delhi’s center.', 100.00, 'Delhi', 'India', 1, 1, 17);

UPDATE Listings SET number_of_bedrooms = 2 WHERE listing_id = 15;

SELECT * FROM Listings;

DELETE FROM Listings WHERE listing_id = 8;


INSERT INTO Bookings (guest_id, listing_id, start_date, end_date, total_price, booking_status) VALUES
(1, 1, '2025-04-01 14:00:00', '2025-04-05 11:00:00', 500.00, 'Confirmed'),
(2, 14, '2025-05-10 15:00:00', '2025-05-15 10:00:00', 750.50, 'Canceled'),
(3, 5, '2025-06-20 13:00:00', '2025-06-25 12:00:00', 1200.75, 'Confirmed'),
(4, 11, '2025-07-05 16:00:00', '2025-07-10 09:00:00', 600.00, 'Confirmed'),
(5, 9, '2025-08-12 12:00:00', '2025-08-18 10:30:00', 950.25, 'Canceled'),
(6, 2, '2025-09-01 14:30:00', '2025-09-07 11:30:00', 1100.00, 'Confirmed'),
(7, 17, '2025-10-15 15:15:00', '2025-10-20 09:45:00', 890.75, 'Confirmed'),
(8, 6, '2025-11-01 10:00:00', '2025-11-06 12:00:00', 725.50, 'Canceled'),
(9, 12, '2025-12-20 13:45:00', '2025-12-25 11:15:00', 1300.00, 'Confirmed'),
(10, 10, '2026-01-05 17:00:00', '2026-01-10 08:00:00', 999.99, 'Confirmed');

UPDATE Booking SET booking_status='Canceled' WHERE booking_id = 9;

SELECT * FROM Bookings;

DELETE FROM Listings WHERE listing_id = 10;
