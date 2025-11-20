create database moviedb;
use moviedb;

-- 10.BookingSeats
insert into booking_seats (booking_id, template_seat_id, seatCode, price) values
(10, 10, 'A1', 180.00),
(11, 11, 'A2', 250.00),
(12, 12, 'B1', 300.00);

-- 9.Bookings
insert into bookings (user_id, show_id, bookingTime, amount, status, holdExpiresAt) values
(1, 13, NOW(), 400.00, 'CONFIRMED', NOW() + INTERVAL 1 HOUR),
(2, 14, NOW(), 700.00, 'CONFIRMED', NOW() + INTERVAL 1 HOUR),
(3, 15, NOW(), 550.00, 'HOLD', NOW() + INTERVAL 30 MINUTE);

select * from bookings;

-- 3.MovieReviews
insert into movie_reviews (movie_id, user_id, rating, comment, createdAt) values
(1, 1, 5, 'Amazing movie! Enjoyed a lot ever!', NOW()),
(1, 2, 4, 'Great start of the fight, waiting for next movie.', NOW()),
(2, 1, 5, 'Brilliant performances with such an eyes-gambling character.', NOW());

-- 2.Movies
insert into movies (title, language, genre, duration, description, posterUrl) values
("Crayon Shin-chan the Movie: Super Hot! The Spicy Kasukabe Dancers", 'Telugu,Hindi', 'Action,Drama', 181, 'After the Kasukabe Defence Force wins a trip to India, Shinnosuke and Bo-chan enter a suspicious general store and find a backpack that holds a terrifying secret.', 'https://encrypted-tbn0.gstatic.com/images q=tbn:ANd9GcR4YX41aXPvObz3NY7Zf44qK6LlQGA0gsnmqA&s'),
("Demon Slayer: Kimetsu no Yaiba Infinity Castle", 'Hindi,Japanese', 'Adventure,Action', 190, 'Tanjiro Kamado and other members of the Demon Slayer Corps find themselves in an epic battle at Infinity Castle.', 'https://example.com/dangal.jpg'),
('Chainsaw Man - The Movie: Reze Arc', 'English,Japanese', 'Action,Comedy', 185, 'Chainsaw Man faces his deadliest battle yet in a brutal war between devils, hunters and secret enemies.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSlacjk-N2t0Ool13mp3eZJAHGCfN-ce_J6qt6BsL08mYbzeJetpHS2kTjRzy8kZMVHdP_OnA');

select * from movies;

-- 11.Payments
insert into payments (booking_id, user_id, amount, status, txnId, gateway, createdAt) values
(10, 1, 400.00, 'SUCCESS', 'txn_123456', 'RAZORPAY', NOW()),
(11, 2, 700.00, 'SUCCESS', 'txn_123457', 'RAZORPAY', NOW()),
(12, 3, 550.00, 'INITIATED', 'txn_123458', 'RAZORPAY', NOW());

select * from payments;

-- 12.Refunds
insert into refunds (payment_id, booking_id, user_id, amount, status, refundTxnId, createdAt, processedAt) values
(4, 10, 1, 400.00, 'SUCCESS', 'ref_123456', NOW(), NOW()),
(5, 11, 2, 700.00, 'SUCCESS', 'ref_123457', NOW(), NOW()),
(6, 12, 3, 550.00, 'INITIATED', 'ref_123458', NOW(), NULL);

-- 5..Screens
insert into screens (name, description, theater_id) values
('Screen 1', 'Main screen with Dolby Atmos', 1),
('Screen 2', 'Standard screen', 1),
('Screen A', 'IMAX screen', 2);

select * from screens;

-- 6.SeatTemplates
insert into seat_templates (name, rows_no, cols, screen_id) values
('Standard Layout', 3, 5, 4),
('VIP Layout', 6, 6, 5),
('IMAX Layout', 9, 12, 6);

select * from seat_templates;

-- 7.Shows
insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(1, 4, 22, '2025-11-16 18:30:00', 80),
(2, 5, 23, '2025-11-17 21:50:00', 80),
(3, 6, 24, '2025-11-17 20:50:00', 48);

select * from shows;

-- 8.TemplateSeats
insert into template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) values
('A', 1, 'A1', 'REGULAR', 180.00, 22),
('A', 2, 'A2', 'REGULAR', 250.00, 23),
('B', 1, 'B1', 'VIP', 300.00, 24);

select * from template_seats;

-- 4.Theaters
insert into theaters (name, city, address) values
('INOX', 'Vizag', 'Central,Maddillapalem'),
('Varun INOX', 'Vizag', 'Beach Road'),
('PVR cinemas', 'visakhapatnam', 'P.M pallem,Madhurawada');

-- 1. Users
insert into users (username, email, fullName, phone, password, role, createdAt) values
('riya09', 'riya09@gmail.com', 'Riya Sher', '9087653420', 'riya@09', 'USER', NOW()),
('abhi', 'abhi07@gmail.com', 'abhi k', '7098567419', 'abhi07@', 'USER', NOW()),
('admin_12', 'admin.12@gmail.com', 'sai k', '8097875654', 'sai0@5', 'ADMIN', NOW());

select * from users;
