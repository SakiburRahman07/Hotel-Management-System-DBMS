-- Insert demo data into hotel table
-- Insert data into hotel table
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type) VALUES (1, 'Dhaka Grand', 'Dhaka', '0123456789', 'info@dhakagrand.com', '5star');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type) VALUES (2, 'Chittagong Bliss', 'Chittagong', '0987654321', 'contact@chittagongbliss.com', '3star');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type) VALUES (3, 'Sylhet Paradise', 'Sylhet', '0171234567', 'info@sylhetparadise.com', '7star');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type) VALUES (4, 'Rajshahi Royal', 'Rajshahi', '0179876543', 'royal@rajshahiroyal.com', '5star');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type) VALUES (5, 'Coxs Bazar Beach Resort', 'Coxs Bazar', '0158765432', 'contact@coxsbazarbeachresort.com', '5star');
-- Insert data into room table
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (1, 1, 10000, 'large', 4);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (2, 1, 8000, 'medium', 3);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (3, 2, 6000, 'small', 2);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (4, 3, 12000, 'large', 4);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (5, 5, 10000, 'large', 4);

-- Insert data into guest table
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_age, guest_gender, guest_nationality) VALUES (1, 'Rahim Khan', '0171111111', 'rahim.khan@example.com', 'Dhaka', 35, 'male', 'Bangladeshi');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_age, guest_gender, guest_nationality) VALUES (2, 'Mina Akter', '0172222222', 'mina.akter@example.com', 'Chittagong', 28, 'female', 'Bangladeshi');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_age, guest_gender, guest_nationality) VALUES (3, 'Ali Hasan', '0173333333', 'ali.hasan@example.com', 'Sylhet', 45, 'male', 'Bangladeshi');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_age, guest_gender, guest_nationality) VALUES (4, 'Fatema Begum', '0174444444', 'fatema.begum@example.com', 'Rajshahi', 33, 'female', 'Bangladeshi');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_age, guest_gender, guest_nationality) VALUES (5, 'Nazmul Hossain', '0175555555', 'nazmul.hossain@example.com', 'Coxs Bazar', 39, 'male', 'Bangladeshi');

-- Insert data into room_reservation table
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (1, 1, 101, 5001, TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-04-18', 'YYYY-MM-DD'), 'confirmed', 'paid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (2, 2, 102, 5002, TO_DATE('2024-04-20', 'YYYY-MM-DD'), TO_DATE('2024-04-25', 'YYYY-MM-DD'), 'confirmed', 'paid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (3, 3, 103, 5003, TO_DATE('2024-05-05', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'confirmed', 'unpaid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (4, 4, 104, 5004, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'confirmed', 'paid');
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, reservation_status, payment_status) VALUES (5, 5, 105, 5005, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'confirmed', 'unpaid');

-- Insert data into event table
INSERT INTO event (event_id, event_name, event_description, event_type, event_organizer) VALUES (1, 'Dhaka Art Festival', 'An annual art festival in Dhaka', 'general', 'Dhaka Art Society');
INSERT INTO event (event_id, event_name, event_description, event_type, event_organizer) VALUES (2, 'Chittagong Tech Expo', 'Technology exhibition in Chittagong', 'conference', 'Tech Hub Bangladesh');
INSERT INTO event (event_id, event_name, event_description, event_type, event_organizer) VALUES (3, 'Sylhet Literature Fest', 'Literature festival in Sylhet', 'general', 'Sylhet Literary Society');
INSERT INTO event (event_id, event_name, event_description, event_type, event_organizer) VALUES (4, 'Rajshahi Music Festival', 'Music festival in Rajshahi', 'general', 'Rajshahi Music Club');
INSERT INTO event (event_id, event_name, event_description, event_type, event_organizer) VALUES (5, 'Coxs Bazar Beach Wedding', 'Beach wedding event in Coxs Bazar', 'wedding', 'Beach Weddings BD');

-- Insert data into event_in_hotel table
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_status) VALUES (1, 1, 101, TO_DATE('2024-04-16', 'YYYY-MM-DD'), TO_DATE('2024-04-17', 'YYYY-MM-DD'), 1001, 100, 'scheduled');
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_status) VALUES (2, 2, 102, TO_DATE('2024-04-21', 'YYYY-MM-DD'), TO_DATE('2024-04-22', 'YYYY-MM-DD'), 1002, 200, 'ongoing');
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_status) VALUES (3, 3, 103, TO_DATE('2024-05-06', 'YYYY-MM-DD'), TO_DATE('2024-05-07', 'YYYY-MM-DD'), 1003, 50, 'completed');
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_status) VALUES (4, 4, 104, TO_DATE('2024-05-16', 'YYYY-MM-DD'), TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1004, 300, 'scheduled');
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice, event_capacity, event_status) VALUES (5, 5, 105, TO_DATE('2024-06-02', 'YYYY-MM-DD'), TO_DATE('2024-06-03', 'YYYY-MM-DD'), 1005, 500, 'scheduled');



-- Inserting demo data into the room_registry table
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (1, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (2, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (3, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (4, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'booked');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (5, 3, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');