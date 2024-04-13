-- Inserting demo data into the hotel table
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone) VALUES (1, 'Pan Pacific', '107 Kazi Nazrul Islam Ave', '+880 2-5502-8008');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone) VALUES (2, 'InterContinental', '1 Minto Road', '+880 2-5566-3030');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone) VALUES (3, 'The Westin', 'Main Gulshan Avenue', '+880 2-989-1988');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone) VALUES (4, 'Radisson Blu', 'Airport Road', '+880 2-983-4555');
INSERT INTO hotel (hotel_id, hotel_name, hotel_address, hotel_phone) VALUES (5, 'Amari', '47, Road No 41', '+880 2-5505-9620');

-- Inserting demo data into the room table
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (1, 1, 100, 'medium', 2);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (2, 1, 150, 'large', 4);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (3, 2, 120, 'small', 1);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (4, 2, 200, 'medium', 2);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (5, 3, 180, 'large', 3);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (6, 3, 90, 'small', 1);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (7, 4, 250, 'large', 4);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (8, 4, 130, 'medium', 2);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (9, 5, 140, 'small', 1);
INSERT INTO room (room_id, hotel_id, room_price, room_size, room_capacity) VALUES (10, 5, 220, 'large', 3);

-- Inserting demo data into the guest table
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (1, 'John', '+1234567890', 'john@example.com', '123 Main St');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (2, 'Jane', '+9876543210', 'jane@example.com', '456 Elm St');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (3, 'Alice', '+5551234567', 'alice@example.com', '789 Ocean Blvd');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (4, 'Bob', '+1112223333', 'bob@example.com', '1 Minto Road');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (5, 'Emily', '+4445556666', 'emily@example.com', 'Main Gulshan Avenue');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (6, 'Michael', '+7778889999', 'michael@example.com', 'Airport Road');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (7, 'Sarah', '+3334445555', 'sarah@example.com', '47, Road No 41');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (8, 'David', '+6667778888', 'david@example.com', '56, Mohakhali');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (9, 'Olivia', '+9990001111', 'olivia@example.com', '27, Mirpur Road');
INSERT INTO guest (guest_id, guest_name, guest_phone, guest_email, guest_address) VALUES (10, 'James', '+2223334444', 'james@example.com', '84, Gulshan Avenue');


-- Inserting demo data into the room_reservation table
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (1, 1, 1001, 12345);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (2, 2, 1002, 23456);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (3, 3, 1003, 34567);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (4, 4, 1004, 45678);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (5, 5, 1005, 56789);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (6, 6, 1006, 67890);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (7, 7, 1007, 78901);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (8, 8, 1008, 89012);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (9, 9, 1009, 90123);
INSERT INTO room_reservation (room_id, guest_id, booking_id, booking_invoice) VALUES (10, 10, 1010, 10101);

-- Inserting demo data into the event table
INSERT INTO event (event_id, event_name) VALUES (1, 'Wedding');
INSERT INTO event (event_id, event_name) VALUES (2, 'Conference');
INSERT INTO event (event_id, event_name) VALUES (3, 'Birthday Party');
INSERT INTO event (event_id, event_name) VALUES (4, 'Seminar');
INSERT INTO event (event_id, event_name) VALUES (5, 'Product Launch');

-- Inserting demo data into the event_in_hotel table
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice) VALUES (1, 1, 10001, TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-05-12', 'YYYY-MM-DD'), 123456);
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice) VALUES (2, 2, 10002, TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-06-17', 'YYYY-MM-DD'), 234567);
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice) VALUES (3, 3, 10003, TO_DATE('2024-07-20', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), 345678);
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice) VALUES (4, 4, 10004, TO_DATE('2024-08-25', 'YYYY-MM-DD'), TO_DATE('2024-08-27', 'YYYY-MM-DD'), 456789);
INSERT INTO event_in_hotel (event_id, guest_id, reserv_id, start_date, end_date, event_invoice) VALUES (5, 5, 10005, TO_DATE('2024-09-30', 'YYYY-MM-DD'), TO_DATE('2024-10-02', 'YYYY-MM-DD'), 567890);

-- Inserting demo data into the room_registry table
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (1, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (2, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (3, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (4, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'booked');
INSERT INTO room_registry (room_id, hotel_id, registry_date, room_availability) VALUES (5, 3, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'available');