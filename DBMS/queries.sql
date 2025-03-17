
-- FILTERING AND SORTING 

-- Retrieve all listings available in a particular city
SELECT * FROM Listings WHERE city = 'Delhi';

-- List all properties shorted by price(ascending and descending)
SELECT * FROM Listings ORDER BY price_per_night;
SELECT * FROM Listings ORDER BY price_per_night DESC;

-- Get bookings for a particular user
SELECT * FROM Bookings WHERE guest_id = '2';

-- Find properties within a specific price range
SELECT * FROM Listings WHERE price_per_night BETWEEN 150 AND 200;

-- Aggregations and grouping 

-- Count total listings per city
SELECT city as City, COUNT(city) as "Total Listings" FROM Listings GROUP BY city;

-- Find the average rating of each listing
SELECT title as Title, AVG(rating) as "Average Rating" FROM Listings as l JOIN Reviews as r ON l.listing_id = r.listing_id GROUP BY title;

-- Show the number of bookings per month
SELECT DATE_FORMAT(start_date,'%b') as Month, COUNT(start_date) as Count FROM Bookings GROUP BY DATE_FORMAT(start_date,'%b');



-- JOINS AND SUBQUERIES

-- retrieve all bookings along with guest and listing details
SELECT full_name AS "Full Name", title AS Title,booking_status AS "Booking Status", start_date AS "Start Date", end_date AS "End Date", price_per_night AS "Price Per Night", city AS City, country AS Country FROM Bookings as b JOIN Users as u ON b.guest_id=u.user_id JOIN Listings as l ON l.listing_id=b.listing_id;

-- show listings with their average rating

SELECT title as Title, AVG(rating) as "Average Rating"  FROM Listings as l JOIN Reviews as r on l.listing_id=r.listing_id GROUP BY title;

-- Find hosts who have never received a booking

SELECT full_name AS "Full Name" FROM Users AS u JOIN Listings AS l ON u.user_id=l.host_id LEFT OUTER JOIN Bookings AS b on b.listing_id=l.listing_id WHERE b.listing_id is NULL;

-- Get the most booked property in db

SELECT title AS Title, COUNT(title) AS "Bookings Count" FROM Bookings as b JOIN Listings AS l ON b.listing_id=l.listing_id GROUP BY title ORDER BY COUNT(title) DESC limit 1;


-- Advanced Queries 


-- Retrieve all guests who have spent more than $1000 in total bookings 
SELECT full_name AS "Full Name", SUM(total_price) AS "Total Price" FROM  USERS AS u JOIN Bookings AS b on u.user_id=b.guest_id GROUP BY full_name HAVING SUM(total_price)>1000;

-- Five listings that have never been reviewed
SELECT title AS Title FROM Listings AS l LEFT OUTER JOIN Reviews AS r ON l.listing_id=r.listing_id WHERE r.listing_id IS NULL LIMIT 5;

-- Get the top 3 highest-rated properties
SELECT title AS Title, AVG(rating) AS "Average Rating" FROM Listings AS l JOIN Reviews AS r ON l.listing_id=r.listing_id GROUP BY title ORDER BY AVG(rating) DESC limit 3;

-- List the most active guests

SELECT full_name AS "Full Name", COUNT(full_name) AS "Bookings" FROM Users AS u JOIN Bookings AS b WHERE u.user_id=b.guest_id GROUP BY full_name ORDER BY COUNT(full_name) DESC;

