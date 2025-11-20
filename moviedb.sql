create database moviedb;
use moviedb;

-- 10.BookingSeats
insert into booking_seats (booking_id, template_seat_id, seatCode, price) values
(7, 7, 'A1', 180.00),
(8, 8, 'A2', 250.00),
(9, 9, 'B1', 300.00);

-- 9.Bookings
insert into bookings (user_id, show_id, bookingTime, amount, status, holdExpiresAt) values
(1, 10, NOW(), 400.00, 'CONFIRMED', NOW() + INTERVAL 1 HOUR),
(2, 11, NOW(), 700.00, 'CONFIRMED', NOW() + INTERVAL 1 HOUR),
(3, 12, NOW(), 550.00, 'HOLD', NOW() + INTERVAL 30 MINUTE);

select * from bookings;

-- 3.MovieReviews
insert into movie_reviews (movie_id, user_id, rating, comment, createdAt) values
(1, 1, 5, 'Amazing movie! Enjoyed a lot ever!', NOW()),
(1, 2, 4, 'Great start of the fight, waiting for next movie.', NOW()),
(2, 1, 5, 'Brilliant performances with such an eyes-gambling character.', NOW());

select * from movie_reviews;

-- 2.Movies
insert into movies (title, language, genre, duration, description, posterUrl) values
("Crayon Shin-chan the Movie: Super Hot! The Spicy Kasukabe Dancers", 'Telugu,Hindi', 'Action,Drama', 181, 'After the Kasukabe Defence Force wins a trip to India, Shinnosuke and Bo-chan enter a suspicious general store and find a backpack that holds a terrifying secret.', 'https://encrypted-tbn0.gstatic.com/images q=tbn:ANd9GcR4YX41aXPvObz3NY7Zf44qK6LlQGA0gsnmqA&s'),
("Demon Slayer: Kimetsu no Yaiba Infinity Castle", 'Hindi,Japanese', 'Adventure,Action', 190, 'Tanjiro Kamado and other members of the Demon Slayer Corps find themselves in an epic battle at Infinity Castle.', 'https://example.com/dangal.jpg'),
('Chainsaw Man - The Movie: Reze Arc', 'English,Japanese', 'Action,Comedy', 185, 'Chainsaw Man faces his deadliest battle yet in a brutal war between devils, hunters and secret enemies.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSlacjk-N2t0Ool13mp3eZJAHGCfN-ce_J6qt6BsL08mYbzeJetpHS2kTjRzy8kZMVHdP_OnA');

SET SQL_SAFE_UPDATES = 0;

update movies 
set posterUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFMNJmrbDkkM_LNFujKW_MrHuNUQLFa8p3i490QR-Yz0XXzWFLbQ-_1NEKbDsQYFm-tOASFXfKAE4wxc4vTI1N1V8rBUwVdnKO4mBNX7UK&s=10"
where title = "Crayon Shin-chan the Movie: Super Hot! The Spicy Kasukabe Dancers";

alter table movies
add column trailerUrl varchar(500);

update movies set trailerUrl = 'https://www.youtube.com/embed/Y4zd4Kl6-SY' where title = 'Crayon Shin-chan the Movie: Super Hot! The Spicy Kasukabe Dancers';
update movies set trailerUrl = 'https://www.youtube.com/embed/x7uLutVRBfI' where title = 'Demon Slayer: Kimetsu no Yaiba Infinity Castle';
update movies set trailerUrl = 'https://www.youtube.com/embed/EPaoHkV0dYw' where title = 'Chainsaw Man - The Movie: Reze Arc';
update movies set trailerUrl = 'https://www.youtube.com/embed/up9AR3ZCc7w' where title = 'ok bangaram';
update movies set trailerUrl = 'https://www.youtube.com/embed/Iz97_kxHaSc' where title = 'Hi Nanna';
update movies set trailerUrl = 'https://www.youtube.com/embed/1cRzZcMlJh8' where title = 'heart eyes';

SELECT * FROM movies WHERE id IN (1, 2);
select * from movies;

-- 11.Payments
insert into payments (booking_id, user_id, amount, status, txnId, gateway, createdAt) values
(7, 1, 400.00, 'SUCCESS', 'txn_123456', 'RAZORPAY', NOW()),
(8, 2, 700.00, 'SUCCESS', 'txn_123457', 'RAZORPAY', NOW()),
(9, 3, 550.00, 'INITIATED', 'txn_123458', 'RAZORPAY', NOW());

select * from payments;

-- 12.Refunds
insert into refunds (payment_id, booking_id, user_id, amount, status, refundTxnId, createdAt, processedAt) values
(7, 7, 1, 400.00, 'SUCCESS', 'ref_123456', NOW(), NOW()),
(8, 8, 2, 700.00, 'SUCCESS', 'ref_123457', NOW(), NOW()),
(9, 9, 3, 550.00, 'INITIATED', 'ref_123458', NOW(), NULL);

-- 5..Screens
insert into screens (name, description, theater_id) values
('Screen 1', 'Main screen with Dolby Atmos', 1),
('Screen 2', 'Standard screen', 1),
('Screen A', 'IMAX screen', 2);

select * from screens;

-- 6.SeatTemplates
insert into seat_templates (name, rows_no, cols, screen_id) values
('Standard Layout', 3, 5, 1),
('VIP Layout', 6, 6, 2),
('IMAX Layout', 9, 12, 3);

select * from seat_templates;

-- 7.Shows
insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(1, 1, 1, '2025-11-16 18:30:00', 80),
(2, 2, 2, '2025-11-17 21:50:00', 80),
(3, 3, 3, '2025-11-17 20:50:00', 48);

select * from shows;

-- 8.TemplateSeats
insert into template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) values
('A', 1, 'A1', 'REGULAR', 180.00, 1),
('A', 2, 'A2', 'REGULAR', 250.00, 2),
('B', 1, 'B1', 'VIP', 300.00, 3);

select * from template_seats;

-- 4.Theaters
insert into theaters (name, city, address) values
('INOX', 'Vizag', 'Central,Maddillapalem'),
('Varun INOX', 'Vizag', 'Beach Road'),
('PVR cinemas', 'visakhapatnam', 'P.M pallem,Madhurawada');

select * from theaters;

-- 1. Users
insert into users (username, email, fullName, phone, password, role, createdAt) values
('riya09', 'riya09@gmail.com', 'Riya Sher', '9087653420', 'riya@09', 'USER', NOW()),
('abhi', 'abhi07@gmail.com', 'abhi k', '7098567419', 'abhi07@', 'USER', NOW()),
('admin_12', 'admin.12@gmail.com', 'sai k', '8097875654', 'sai0@5', 'ADMIN', NOW());

select * from users;
