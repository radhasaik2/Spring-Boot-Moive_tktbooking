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

insert into movies (title, language, genre, duration, description, posterUrl,trailerUrl) values
('Demon Slayer: Kimetsu no Yaiba – To the Hashira Training', 'Japanese,English', 'Action,Animation', 104, 'Tanjiro and his comrades complete their rehabilitation training at the Butterfly Mansion to prepare for their next mission against demons.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmm4NWk4X5eo5wthlS89bI0s-a2dQcu7MgM0LbcE4GkD56PElUKNm-pJKS0hbGYX0vtmbv_y43Sd8snognX9CyB_1iHfw5U232l4gDI0e2&s=10','https://www.youtube.com/embed/a9tq0aS5Zu8'),
('Demon Slayer: Kimetsu no Yaiba – To the Swordsmith Village', 'Japanese,English', 'Action,Animation', 110, 'Tanjiro ventures to the Swordsmith Village to repair his sword and encounters new enemies and allies.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbwpMHDzORf9ixm4BuCL944ScJ9UQlwoZey9Qqxfl7zJyO0TFxQKiC4pGy6y1LJd8hOkS6_RX3ZDqVmDf14rYz0a4CAcdnEwTzwQ6WJzNDsw&s=10','https://www.youtube.com/embed/ATJYac_dORw'),
('Jujutsu Kaisen 0', 'Japanese,English', 'Action,Supernatural', 105, 'Yuta Okkotsu becomes a Jujutsu Sorcerer to control the cursed spirit of his childhood friend.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT8PkifgvibnGkcDplA_luCuYfVVzuDQsUM7fZ3o0b_ujjt8uOZiKW3H-XFMLL69ZW0nfGtDmn3MMumV0S5BlwZFsMxjBLa-Gk2hLZk1Il&s=10','https://www.youtube.com/embed/8QkHWlrHqlE'),
('I Want to Eat Your Pancreas', 'Japanese', 'Romance,Drama', 108, 'A high school student discovers his classmates diary and learns she is suffering from a pancreatic disease.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ2fzL4myQW5-wtfsxCNGC65eqmVxV-nudEzjgXMrVXyWaX6pOJh7ZhnyPXLy2P4NbLqLISjsB0UHYfqbYjbQNlfS5wZDfrgFLMKYQCoR6&s=10','https://www.youtube.com/embed/MmoBvmJA9XI'),
('A Silent Voice', 'Japanese', 'Drama,Romance', 130, 'A former bully seeks redemption by befriending a deaf girl he once tormented in elementary school.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_ASbxEitmzH3jPekQwLhiK8Va9K8_7ZYTdK_yy1X7WJ07535ry35EArCuV8D_LqA-X-IIEJVeBZEgM_D6fvZRvyalXVN77d2V5x9og_m4&s=10','https://www.youtube.com/embed/nfK6UgLra7g'),
('Even If This Love Disappears from the World Tonight', 'Japanese', 'Romance,Drama', 122, 'A young couple navigates love and relationships in this heartfelt romantic drama.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlTdQQJos7CjzUor6fmaxET2j2VjNSR3dz6g&s','https://www.youtube.com/embed/JA2iC3kHgEM'),
('Tokyo Revengers', 'Japanese', 'Action,Time Travel', 120, 'A man travels back in time to his middle school days to save his ex-girlfriend from a tragic fate.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4D54IMUhCMnmx0GL6GcLgPo29ps8vVmL0Bz2ahnBcQLp7h0gYvlvZ_1EfKrrhQ6F6DQ-ZVGUIpCnm45Ei4Tj2iXc_jnrUDcfvPZaPfX8X&s=10','https://www.youtube.com/embed/WPoU2FQTMq4'),
('Tokyo Ghoul', 'Japanese', 'Horror,Action', 119, 'A college student becomes a half-ghoul after a chance encounter and must navigate both human and ghoul societies.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk--D0J0MvE1pYaWgB4F869MB5B1vWcL_dCQsQZGCkL0kPWJRF9iBctFYeq1V-xA2Zyiw0RqYPxo3lyU1A2wcuKVJF27KxWA7Q3sQUNO4pkw&s=10','https://www.youtube.com/embed/MqVLoui7aV0'),
('Our Secret Diary', 'Japanese,Korean', 'Romance,Comedy', 115, 'Two high school students develop feelings while working on a school project together.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQsq6D9Zswyhg3cVBhysirLehPnnPTwbyywyD9RJ19T8oWKzMUzHQ3WsjlfhCGd42Pm8N9XzqV1Tb1FGmL57Fef0j2jp3q_uxozbz_75FW&s=10','https://www.youtube.com/embed/ttueLIn__E8'),
('Spirited Away', 'Japanese,English', 'Animation,Fantasy', 125, 'A young girl wanders into a world of spirits where her parents are turned into pigs.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDQCxzbH2LVNhak6lorplVRFcvmzRjG69bK2qkcoknsCKyYyvP9krG3hR0BtV-SmsbUrUDsjsRDkRDGlhWoWNpZQtdWbTS3LeINr7fUPTt&s=10','https://www.youtube.com/embed/ByXuk9QqQkk'),
('Padi Padi Leche Manusu', 'Telugu', 'Romance,Drama', 145, 'A young couple faces challenges in their relationship while pursuing their dreams.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0yoQc6Hb4Gc8VFT-EykufdFl5nih6x3nWXu0DLQgOTJJ8lWHWMZle1-TCwVAJehkmNnERKAhieSFu2CnD_Av8Lii2zLtXEFA0CyqnXgwUeA&s=10','https://www.youtube.com/embed/IkLz6dhHmOQ'),
('Ghost Rider', 'English', 'Action,Fantasy', 114, 'A motorcycle stuntman becomes a supernatural vigilante after making a deal with the devil.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpMRI-BKMfPvJkx3bGEZBprCiS4hYN8IsWHFV1TwTLPceynmWq_vTyaxp-iqvOQdGiIAfSeIdshEB0FEIWLVCvdLrALLAuS639gwgrd-6Y&s=10','https://www.youtube.com/embed/nu6R7ypaz5g'),
('Rakshasudu', 'Telugu', 'Horror,Thriller', 138, 'A psychological thriller about a serial killer and the cop who tries to catch him.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmAuIVZ9F4WnVG6oR57wphcvDt5mYe3zMefgkIpOuBWeKZpcsap2wCe8OKV4rQ1J81nty2p3ZvlJoeEzVbUJxCyfCn0sQkMqHWxn7NrBHz&s=10','https://www.youtube.com/embed/DF6dmkWXTlY'),
('Kanchana', 'Tamil,Telugu', 'Horror,Comedy', 145, 'A man who fears ghosts becomes possessed by multiple spirits and must solve their unfinished business.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZcdrptKDr1tI4z4w4sEP3jT8wgDmHutYihw&s','https://www.youtube.com/embed/-16MdQ9Blgk'),
('Ganga', 'Telugu', 'Drama,Action', 150, 'A village story revolving around water disputes and social issues.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTShdCB4fPUlNWvji12Pbq2NbnCA9qaS-dYEa0u56nWE1YCu70sJxVobQyTafqOrfIBLOg0XVVCM337mqQ98VFESB1g73q4oqqOm0txl_4WIw&s=10','https://www.youtube.com/embed/1EOJ48Hgwmw'),
('Mahanati', 'Telugu,Tamil', 'Biography,Drama', 177, 'The life story of legendary South Indian actress Savitri.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2rmtcn97qtO6gxtaFbn4HiMgI6bJAgmEUuu6hSmbuIJhHvGj0soDLnhDIBfjcrOVQ1c8j23AMDAlPUtyJmKBdOTcQskloM_hbSZfsHEob3Q&s=10','https://www.youtube.com/embed/OrnYMmWBuV4'),
('Lucky Bhaskar', 'Telugu', 'Comedy,Drama', 140, 'A young mans journey through life and his encounters with luck.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRkzbfjlEGYyvqMnyjyRq22dh--051kfLk8A&s','https://www.youtube.com/embed/FonKx5wvuHI'),
('Animal', 'Hindi', 'Action,Drama', 201, 'A violent story of a father-son relationship and the complexities of family dynamics.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC-TWEXXu3R_Y3AVfPxsATpI5342f3Vvpfp-8iq7qtEbV3AWeYyouDSCt3QiYTENqyn_b3Y9w8-PJmfnotLg5psLEBj8AW6xo5zMuuSVyHiA&s=10','https://www.youtube.com/embed/8FkLRUJj-o0'),
('20th Century Girl', 'Korean', 'Romance,Drama', 119, 'A teen romance set in 1999 about a girl who tries to uncover the identity of her best friends crush.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTISnhrPO8vzAqp95yswZgDAtznglApaRdT7LTsRWczXSe6I7DyCM_uf3zilhsy1BKGSRjnQSzto5qphd1ptEZwbw8JO4jU36HibMpPRaEqvQ&s=10','https://www.youtube.com/embed/KFS4_qevE7M'),
('A Little Red Flower', 'Chinese', 'Romance,Drama', 128, 'Two cancer patients find love and hope while battling their illness in a hospital.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbx3zKiQLEdOE77tgIvyh_zuzkFhmPbNgmQ1jNi9Flj2cjvCxXg9hMh90F5V6ci2WgbtuYo0kzs-5VGknaBn3hDWaUQOmGpYwoMboQIbnh&s=10','https://www.youtube.com/embed/N7Q72fwBTq0'),
('Soulmate', 'Korean', 'Drama,Romance', 124, 'Two friends navigate their complicated relationship over the years while dealing with love and life.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlO_bmm8oYLTYwr0UddDOVBdQY9XMNWCfO9f99tYsDaOKqMFlFNRnbf7TtzDyadzhe9xKSE7YB4qnuqgk2zLYKQiCXCj1XrCo2_xhaFEAtrg&s=10','https://www.youtube.com/embed/94YuHAdNdd8'),
('Pretty Crazy', 'Korean', 'Comedy,Romance', 112, 'A romantic comedy about unexpected love between two very different people.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw2SYmjdC4bde_E_xK6wzORkKgpgtL5VrVHQdxRH_r5yCQD1zDRToq8t39Px1PPCRgUKTlC9CUCqgRq4OTIlVKXTkkJ2_srXa1vE4ijoT2hg&s=10','https://www.youtube.com/embed/-3YXmNAWqeo'),
('Ditto', 'Korean', 'Romance,Fantasy', 110, 'Two students from different years communicate through a ham radio and develop feelings for each other.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScfJHxkBGAcYkr5MyQ6nGRA6dX8YeNdogQ2A&s','https://www.youtube.com/embed/kQL9lxHW1aU'),
('Zombie Reddy', 'Telugu', 'Horror,Comedy', 138, 'A group of people try to survive a zombie apocalypse in rural Telangana.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxe-GanwEefNwdYt8IcKrXWTMpxI241M9nHb1x_gF66W-_OustLG8t6FsJQC8S3sWXKBeTQs_L8Z4mKfJ5aer1ag662n6KP4UHPqTS-SJVzA&s=10','https://www.youtube.com/embed/NHQn4AtMbns'),
('Coup de Maison', 'French', 'Comedy,Drama', 105, 'A family deals with unexpected situations while trying to sell their house.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqzb3FvePGPoPO-qMCwaGJn38TEiqcqkndDkT4BnzbJMaDvbg60eUVP-xrfyBGt0QcNCDOw0TlTEdh79StipkPJLFHj93ZRRX1UwjxVWyI&s=10','https://www.youtube.com/embed/3CpKBAPqqM0'),
('After', 'English', 'Romance,Drama', 106, 'A young woman falls for a mysterious boy with a dark secret during her first year of college.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTRyrKtST5OHt7pMrGrqOWKNznNEydDB4ObSVa_0q_G90vGDd5ZiM-M2aHq1Xqi2J1FJu6moXkdgJ_Nl2H0iXAULwwtZggvD870wOss0Y&s=10','https://www.youtube.com/embed/g99KPOpqZ4Q'),
('Through My Window', 'Spanish', 'Romance,Drama', 116, 'A young woman obsessed with her neighbor finally gets his attention, leading to a complicated relationship.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcWe10xZ-zLXMsaVHsd8LuoEfb9wnUqbccwIdBgx5PfwXeokFWnCi5vLuAAMuDA_tyNuQ8lrThmM1E2Ot9sMkiqZaB74yaYZk9q3xCq8KP&s=10','https://www.youtube.com/embed/jNXZO24fohs'),
('Spider-Man: Homecoming', 'English', 'Action,Adventure', 133, 'Peter Parker balances his life as an ordinary high school student with being a superhero.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN8tJfDE-OJO1oNlV4jH7y-GjB5SnNEGgTQCqBQ5l2_B-iZQNleMWA3MbKz9MO75pCwaZ3N9jZaLaxymDl9yIx0QswFvEotsrEJojwgesO&s=10','https://www.youtube.com/embed/rk-dF1lIbIg'),
('The Amazing Spider-Man', 'English', 'Action,Adventure', 136, 'Peter Parker discovers his powers and becomes Spider-Man while investigating his parents disappearance.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyaHgTGT5rTGTRiZj7jP8UJZwweCeKdakshJKA14dXbBVAUR2-pAzlQQ76zgG7_H7_rQxMqPHSHYQuWhXbgx-GUmGyzsTEXULEHREudD1z&s=10','https://www.youtube.com/embed/-tnxzJ0SSOw'),
('Dada', 'Telugu', 'Drama,Family', 142, 'A story about fatherhood and the challenges of raising a child as a single parent.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNGLwzKnF4C6v8tK4yLPJXmLJr4F8RS63s9FyuUyUmD7lSorn5jr7wpCUXIa3CI_PatBxTTmjUMX8j58ykBCKUkRbfUtTyYsf_kBh5qC62&s=10`','https://www.youtube.com/embed/23mMdgo0prk'),
('Stree', 'Hindi', 'Horror, Comedy', 90, 'The people of Chanderi live under constant fear of Stree, the spirit of a woman who attacks men at night during festivals. Vicky, along with his friends, decides to unravel the mystery.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYu8sL8PHzyEBxGejSv8PhJPuTEbbUaXhdow&s','https://www.youtube.com/embed/gzeaGcLLl_A');

alter table movies
add column trailerUrl varchar(500);

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
('Screen 1', 'Main screen with Dolby Atmos', 14),
('Screen 2', 'Standard screen', 17),
('Screen A', 'IMAX screen', 20);

select * from screens;

-- 6.SeatTemplates
insert into seat_templates (name, rows_no, cols, screen_id) values
('Standard Layout', 13, 15, 14),
('VIP Layout', 16, 16, 17),
('IMAX Layout', 19, 12, 21);


select * from seat_templates;

-- 7.Shows
insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(1, 21, 10, '2025-11-16 18:30:00', 80),
(2, 22, 12, '2025-11-17 21:50:00', 80),
(3, 15, 9, '2025-11-17 21:50:00', 80),
(2, 19, 8, '2025-11-17 21:50:00', 80),
(3, 13, 11, '2025-11-17 20:50:00', 48);

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
