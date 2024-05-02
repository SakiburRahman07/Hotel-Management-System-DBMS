-- Insert demo data into hotel table
-- Insert data into hotel table
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) values (1, 'dhaka grand', 'dhaka', '01712345678', 'info@dhakagrand.com', '5star', 'dhaka', 1207, 150, 8.5, 'www.dhakagrand.com', 'luxurious 5-star hotel in dhaka', '09:00', '23:00', 'yes', 'yes');
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) values (2, 'chittagong bliss', 'chittagong', '01787654321', 'contact@chittagongbliss.com', '3star', 'chittagong', 4200, 100, 7.5, 'www.chittagongbliss.com', 'affordable 3-star hotel in chittagong', '08:00', '22:00', 'no', 'no');
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) values (3, 'sylhet paradise', 'sylhet', '01912345678', 'info@sylhetparadise.com', '7star', 'sylhet', 3100, 200, 9.0, 'www.sylhetparadise.com', 'luxurious 7-star hotel in sylhet', '10:00', '00:00', 'yes', 'yes');
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) values (4, 'rajshahi royal', 'rajshahi', '01987654321', 'royal@rajshahiroyal.com', '5star', 'rajshahi', 6200, 120, 8.0, 'www.rajshahiroyal.com', 'modern 5-star hotel in rajshahi', '09:00', '23:00', 'yes', 'no');
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) values (5, 'coxs bazar beach resort', 'coxs bazar', '01512345678', 'contact@coxsbazarbeachresort.com', '5star', 'coxs bazar', 4700, 250, 8.5, 'www.coxsbazarbeachresort.com', 'beachside 5-star resort in coxs bazar', '08:00', '23:00', 'yes', 'yes');
-- Insert data into room table
insert into room (room_id, hotel_id, room_price, room_size, room_capacity, room_view, floor_number, bed_type, has_balcony, number_of_windows, room_description) values (1, 1, 10000, 'large', 4, 'sea', 5, 'king', 'yes', 4, 'Sea view room with king bed');
insert into room (room_id, hotel_id, room_price, room_size, room_capacity, room_view, floor_number, bed_type, has_balcony, number_of_windows, room_description) values (2, 1, 8000, 'medium', 3, 'city', 3, 'queen', 'no', 2, 'City view room with queen bed');
insert into room (room_id, hotel_id, room_price, room_size, room_capacity, room_view, floor_number, bed_type, has_balcony, number_of_windows, room_description) values (3, 2, 6000, 'small', 2, 'river', 2, 'twin', 'yes', 1, 'River view room with twin beds');
insert into room (room_id, hotel_id, room_price, room_size, room_capacity, room_view, floor_number, bed_type, has_balcony, number_of_windows, room_description) values (4, 3, 12000, 'large', 4, 'mountain', 7, 'king', 'no', 5, 'Mountain view room with king bed');
insert into room (room_id, hotel_id, room_price, room_size, room_capacity, room_view, floor_number, bed_type, has_balcony, number_of_windows, room_description) values (5, 5, 10000, 'large', 4, 'garden', 4, 'double', 'yes', 3, 'Garden view room with double bed');

-- Insert data into guest table
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality) values (1, 'abu bakr siddique', '01712345678', 'abubakr@example.com', '45/b mirpur, dhaka', 'engineer', 35, 'single', 'B+', '9876543210', 'abdul kader siddique', 'dhaka', 1216, to_date('1989-07-10', 'yyyy-mm-dd'), '01812345678', 'male', 'bangladeshi');
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality) values (2, 'sabina yasmin', '01787654321', 'sabina@example.com', '5/1 dhanmondi, dhaka', 'teacher', 29, 'married', 'AB-', '8765432109', 'mohammad ali', 'dhaka', 1205, to_date('1994-02-15', 'yyyy-mm-dd'), '01776543210', 'female', 'bangladeshi');
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality) values (3, 'farhan ahmed', '01823456789', 'farhan@example.com', '77 gulshan, dhaka', 'doctor', 40, 'single', 'A-', '3456789012', 'kamal ahmed', 'dhaka', 1212, to_date('1983-05-20', 'yyyy-mm-dd'), '01887654321', 'male', 'bangladeshi');
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality) values (4, 'amina chowdhury', '01734567890', 'amina@example.com', '32 uttara, dhaka', 'artist', 30, 'widowed', 'O-', '7890123456', 'karim chowdhury', 'dhaka', 1230, to_date('1993-11-10', 'yyyy-mm-dd'), '01723456789', 'female', 'bangladeshi');
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality) values (5, 'rafiqul islam', '01998765432', 'rafiqul@example.com', '12/3 mohammadpur, dhaka', 'lawyer', 50, 'married', 'B+', '5678901234', 'firoz islam', 'dhaka', 1207, to_date('1973-01-05', 'yyyy-mm-dd'), '01834567890', 'male', 'bangladeshi');

-- Insert data into room_reservation table
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (1, 1, 101, 5001, TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-04-18', 'YYYY-MM-DD'), 'confirmed', 'paid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (2, 2, 102, 5002, TO_DATE('2024-04-20', 'YYYY-MM-DD'), TO_DATE('2024-04-25', 'YYYY-MM-DD'), 'confirmed', 'paid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (3, 3, 103, 5003, TO_DATE('2024-05-05', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'confirmed', 'unpaid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (4, 4, 104, 5004, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'confirmed', 'paid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (5, 5, 105, 5005, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'confirmed', 'unpaid');

-- Insert data into event table
insert into event (event_id, event_name, event_description, event_type, event_organizer) values (1, 'dhaka art festival', 'an annual art festival in dhaka', 'general', 'dhaka art society');
insert into event (event_id, event_name, event_description, event_type, event_organizer) values (2, 'chittagong tech expo', 'technology exhibition in chittagong', 'conference', 'tech hub bangladesh');
insert into event (event_id, event_name, event_description, event_type, event_organizer) values (3, 'sylhet literature fest', 'literature festival in sylhet', 'general', 'sylhet literary society');
insert into event (event_id, event_name, event_description, event_type, event_organizer) values (4, 'rajshahi music festival', 'music festival in rajshahi', 'general', 'rajshahi music club');
insert into event (event_id, event_name, event_description, event_type, event_organizer) values (5, 'coxs bazar beach wedding', 'beach wedding event in coxs bazar', 'wedding', 'beach weddings bd');

-- Insert data into event_in_hotel table
insert into event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_weather, event_food, event_theme, event_dress_code, event_music, event_status) values (1, 101, 1001, to_date('2024-05-05', 'yyyy-mm-dd'), to_date('2024-05-06', 'yyyy-mm-dd'), 20000, 100, 'sunny', 'bangladeshi cuisine', 'traditional bangladeshi', 'casual', 'live', 'scheduled');
insert into event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_weather, event_food, event_theme, event_dress_code, event_music, event_status) values (2, 102, 1002, to_date('2024-06-10', 'yyyy-mm-dd'), to_date('2024-06-12', 'yyyy-mm-dd'), 35000, 200, 'cloudy', 'continental', 'wedding', 'formal', 'orchestra', 'scheduled');
insert into event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_weather, event_food, event_theme, event_dress_code, event_music, event_status) values (3, 103, 1003, to_date('2024-07-15', 'yyyy-mm-dd'), to_date('2024-07-16', 'yyyy-mm-dd'), 15000, 80, 'rainy', 'chinese', 'corporate event', 'business casual', 'dj', 'scheduled');
insert into event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_weather, event_food, event_theme, event_dress_code, event_music, event_status) values (4, 104, 1004, to_date('2024-08-20', 'yyyy-mm-dd'), to_date('2024-08-21', 'yyyy-mm-dd'), 18000, 120, 'hot', 'indian', 'birthday party', 'casual', 'other', 'scheduled');
insert into event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_weather, event_food, event_theme, event_dress_code, event_music, event_status) values (5, 105, 1005, to_date('2024-09-10', 'yyyy-mm-dd'), to_date('2024-09-11', 'yyyy-mm-dd'), 25000, 150, 'cool', 'italian', 'anniversary', 'semi-formal', 'live', 'scheduled');




-- Inserting demo data into the room_registry table
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (1, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (2, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (3, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (4, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'booked');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (5, 3, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');