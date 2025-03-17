CREATE DATABASE airbnb_db;
USE airbnb_db;

DROP DATABASE airbnb_db;

CREATE TABLE Users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    account_type ENUM('host','guest') NOT NULL,
    signup_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Listings(
    listing_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price_per_night DECIMAL(10,2) NOT NULL CHECK (price_per_night>=0),
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    number_of_bedrooms INT NOT NULL CHECK(number_of_bedrooms >= 0),
    number_of_bathrooms INT NOT NULL CHECK(number_of_bathrooms >= 0),
    host_id INT NOT NULL,
    FOREIGN KEY(host_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Bookings(
    booking_id int AUTO_INCREMENT PRIMARY KEY,
    guest_id int NOT NULL,
    listing_id int NOT NULL,
    start_date DATETIME  NOT NULL,
    end_date DATETIME NOT NULL,
    total_price DECIMAL(10,2) NOT NULL CHECK(total_price >= 0),
    booking_status ENUM('Confirmed','Canceled') DEFAULT 'Confirmed',
    Foreign Key (guest_id) REFERENCES Users(user_id) on DELETE CASCADE,
    Foreign Key (listing_id) REFERENCES Listings(listing_id) on DELETE CASCADE
);

CREATE TABLE Reviews(
    review_id int AUTO_INCREMENT PRIMARY KEY,
    guest_id int NOT NULL,
    listing_id int NOT NULL,
    rating TINYINT NOT NULL CHECK(rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Foreign Key (listing_id) REFERENCES Listings(listing_id) ON DELETE CASCADE,
    Foreign Key (guest_id) REFERENCES Users(user_id) ON DELETE CASCADE
)

CREATE TABLE Payments(
    payment_id int PRIMARY KEY,
    booking_id int NOT NULL,
    amount_paid DECIMAL(10,2),
    payment_method ENUM('Online','Offline','Card') NOT NULL,
    payment_status ENUM('Pending','Failed','Completed','Refund') NOT NULL DEFAULT 'Pending',
    Foreign Key (booking_id) REFERENCES Bookings(booking_id) on DELETE CASCADE
)