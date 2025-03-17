INSERT INTO Listings (title, description, price_per_night, city, country, number_of_bedrooms, number_of_bathrooms, host_id)
VALUES
('Modern Apartment in Delhi', 'A spacious 2-bedroom apartment in the heart of Delhi.', 200.00, 'Delhi', 'India', 2, 2, 1),
('Cozy Studio in Delhi', 'A cozy studio apartment for short stays in central Delhi.', 120.00, 'Delhi', 'India', 1, 1, 2),
('Luxury Penthouse in Mumbai', 'A luxurious penthouse with a sea view in Mumbai.', 500.00, 'Mumbai', 'India', 4, 3, 3),
('Affordable Room in Mumbai', 'Budget-friendly room available in the city center of Mumbai.', 80.00, 'Mumbai', 'India', 1, 1, 4),
('Comfortable 3-Bedroom Villa in Bangalore', 'A large villa with 3 bedrooms and a garden in Bangalore.', 250.00, 'Bangalore', 'India', 3, 2, 5),
('Modern 2-Bedroom Apartment in Bangalore', 'A sleek and modern apartment perfect for business travelers in Bangalore.', 150.00, 'Bangalore', 'India', 2, 2, 6),
('Charming 1-Bedroom Flat in Delhi', 'A charming flat for solo travelers or couples in Delhi.', 100.00, 'Delhi', 'India', 1, 1, 7),
('Stylish 2-Bedroom Condo in Mumbai', 'A stylish 2-bedroom condo in a prime location in Mumbai.', 220.00, 'Mumbai', 'India', 2, 2, 8),
('Spacious Apartment in Bangalore', 'A spacious apartment in a quiet neighborhood of Bangalore.', 180.00, 'Bangalore', 'India', 2, 1, 9),
('Elegant 3-Bedroom Apartment in Delhi', 'An elegant 3-bedroom apartment with modern amenities in Delhi.', 350.00, 'Delhi', 'India', 3, 2, 10);

INSERT INTO Bookings (guest_id, listing_id, start_date, end_date, total_price, booking_status)
VALUES
(1, 1, '2024-01-15 14:00:00', '2024-01-18 11:00:00', 300.00, 'Confirmed'),
(2, 2, '2024-01-10 12:00:00', '2024-01-14 11:00:00', 400.00, 'Confirmed'),
(3, 3, '2024-01-20 14:00:00', '2024-01-22 11:00:00', 200.00, 'Confirmed'),
(4, 4, '2024-02-05 15:00:00', '2024-02-07 11:00:00', 400.00, 'Confirmed'),
(5, 5, '2024-02-12 13:00:00', '2024-02-15 11:00:00', 450.00, 'Canceled'),
(6, 6, '2024-02-18 14:00:00', '2024-02-20 11:00:00', 300.00, 'Confirmed'),
(7, 7, '2024-03-01 14:00:00', '2024-03-04 11:00:00', 400.00, 'Confirmed'),
(8, 8, '2024-03-12 15:00:00', '2024-03-14 11:00:00', 400.00, 'Confirmed'),
(9, 9, '2024-03-20 13:00:00', '2024-03-22 11:00:00', 400.00, 'Confirmed'),
(10, 10, '2024-04-01 16:00:00', '2024-04-03 10:00:00', 400.00, 'Confirmed'),
(1, 2, '2024-05-01 14:00:00', '2024-05-04 11:00:00', 600.00, 'Confirmed'),
(2, 3, '2024-05-10 12:00:00', '2024-05-13 11:00:00', 500.00, 'Confirmed'),
(3, 4, '2024-06-01 14:00:00', '2024-06-05 11:00:00', 800.00, 'Confirmed'),
(4, 5, '2024-06-10 16:00:00', '2024-06-12 10:00:00', 600.00, 'Canceled'),
(1, 6, '2024-07-01 14:00:00', '2024-07-04 11:00:00', 450.00, 'Confirmed'),
(2, 7, '2024-07-15 14:00:00', '2024-07-17 11:00:00', 400.00, 'Confirmed'),
(5, 8, '2024-08-01 14:00:00', '2024-08-04 11:00:00', 600.00, 'Confirmed'),
(6, 9, '2024-08-10 15:00:00', '2024-08-12 11:00:00', 500.00, 'Confirmed'),
(7, 10, '2024-09-05 14:00:00', '2024-09-07 11:00:00', 600.00, 'Confirmed'),
(8, 1, '2024-09-15 13:00:00', '2024-09-18 11:00:00', 600.00, 'Confirmed');

INSERT INTO Bookings (guest_id, listing_id, start_date, end_date, total_price, booking_status)
VALUES
(2, 1, '2025-01-15 14:00:00', '2025-01-18 11:00:00', 300.00, 'Confirmed')


INSERT INTO Reviews (guest_id, listing_id, rating, review_text, review_date)
VALUES
(1, 1, 5, 'Amazing stay! The property was beautiful and very comfortable. Highly recommended!', '2024-01-19 10:00:00'),
(2, 2, 4, 'Great place, but the check-in process was a bit slow. Overall, a good experience.', '2024-01-14 12:30:00'),
(3, 3, 3, 'The property was fine, but the location was not as expected. Could be better.', '2024-01-22 14:00:00'),
(4, 4, 2, 'Not a great experience. The amenities were lacking and I faced some issues during the stay.', '2024-02-06 16:00:00'),
(5, 5, 1, 'Very disappointing. The property was not clean and did not match the pictures online. I would not recommend.', '2024-02-13 13:00:00'),
(6, 6, 4, 'Good property, but the Wi-Fi was slow. Otherwise, I had a pleasant stay.', '2024-02-19 15:30:00'),
(7, 7, 5, 'Loved the place! The host was very helpful, and the location was perfect. Would definitely stay again!', '2024-03-02 14:45:00'),
(8, 8, 3, 'The property was decent, but the bathroom was not up to the mark. Could use some improvements.', '2024-03-13 10:30:00'),
(9, 9, 4, 'Nice stay, everything was good. A few minor issues, but nothing major to complain about.', '2024-03-21 12:00:00'),
(10, 10, 5, 'Fantastic! Everything was perfect. I had a great time and would love to come back soon!', '2024-04-02 09:00:00'),

(1, 2, 4, 'The location was great, but the space was a bit smaller than I expected. Still, I had a good stay.', '2024-05-03 11:00:00'),
(2, 3, 5, 'Wonderful property! Very clean and the host was friendly. I would definitely return.', '2024-05-12 14:00:00'),
(3, 4, 2, 'The property was not as described. There were a few issues with cleanliness and comfort.', '2024-06-03 17:00:00'),
(4, 5, 3, 'Average experience. The place was fine but not outstanding. I expected more based on the reviews.', '2024-06-11 16:30:00'),
(1, 6, 5, 'Perfect stay! Everything was as expected and more. The host was incredibly helpful!', '2024-07-03 13:00:00'),
(2, 7, 4, 'Great experience overall. The house was good, but I think it could use some minor upgrades.', '2024-07-16 12:30:00'),
(5, 8, 3, 'It was an okay stay. The property was decent, but I had some issues with the plumbing during my stay.', '2024-08-02 15:15:00'),
(6, 9, 5, 'One of the best stays I’ve had. The place was beautiful, clean, and well maintained.', '2024-08-12 11:45:00'),
(7, 10, 4, 'Overall, a good stay. A few minor issues but the location and host made up for them.', '2024-09-06 14:00:00'),
(8, 1, 5, 'Wonderful experience! The property had everything I needed, and the location was great.', '2024-09-17 09:30:00');


INSERT INTO Users (full_name, email, phone_number, account_type)
VALUES ('Aarav Patel', 'aarav.patel@example.com', '9876543210', 'host');


INSERT INTO Listings (title, description, price_per_night, city, country, number_of_bedrooms, number_of_bathrooms, host_id)
VALUES ('Modern Apartment in Bangalore', 'A 2-bedroom apartment in the heart of Bangalore with all modern amenities.', 120.00, 'Bangalore', 'India', 2, 1, 11);
