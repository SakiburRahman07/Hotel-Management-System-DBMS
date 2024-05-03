--Hotel table queries
--Add a new hotel
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) values (1, 'dhaka grand', 'dhaka', '01712345678', 'info@dhakagrand.com', '5star', 'dhaka', 1207, 150, 8.5, 'www.dhakagrand.com', 'luxurious 5-star hotel in dhaka', '09:00', '23:00', 'yes', 'yes');
--View all hotels
select * from hotel;
--View hotels with specific types
select * from hotel where hotel_type = '5star';
--Update hotel details
set hotel_name = 'dhaka grand international', hotel_address="Mirzapur, Tangail" where hotel_id = 1;
--Delete a hotel
delete from hotel where hotel_id = 1;
--View hotels by city
select * from hotel where hotel_city = 'dhaka';
--View hotels by rating
select * from hotel where hotel_rating > 3;
--View Hotels by opening and closing Hours
select * from hotel where hotel_opening_hour <= '10:00' and hotel_closing_hour >= '20:00';
--Count number of Hotels
select count(*) as total_hotels from hotel;
--Count number of hotels by type
select hotel_type, count(*) as count_hotels from hotel group by hotel_type;
--Get the Hotel with the Highest Rating 
select * from hotel order by hotel_rating desc;
--Get Hotels offering parking 
select * from hotel where has_parking = 'yes';
--Get Hotels offering pool
select * from hotel where has_pool = 'yes';
--View hotels by postcode 
select * from hotel where hotel_postcode = 1945;
--View hotel with specific features
select * from hotel where has_parking = 'yes' and has_pool = 'yes';
-----------------------------------------------------------------------------------------------------
--Room table queries
--Add a new room
insert into room (room_id, hotel_id, room_price, room_size, room_capacity, room_view, floor_number, bed_type, has_balcony, number_of_windows, room_description) values (1, 1, 5000, 'large', 4, 'city', 5, 'queen', 'yes', 4, 'luxurious room with a city view');
--View all rooms
select * from room;
--View rooms by size
select * from room where room_size = 'large';
--Update room details
update room set room_price = 6000, room_size = 'medium' where room_id = 1;
--Delete a room
delete from room where room_id = 1;
--View rooms by capacity
select * from room where room_capacity > 3;
--View rooms by view
select * from room where room_view = 'city';
--View rooms by bed type
select * from room where bed_type = 'queen';
--View rooms by balcony availability
select * from room where has_balcony = 'yes';
--View rooms by number of windows
select * from room where number_of_windows > 3;
--View rooms by floor number
select * from room where floor_number = 5;
--Count number of rooms
select count(*) as total_rooms from room;
--Count number of rooms by size
select room_size, count(*) as count_rooms from room group by room_size;
--Get the Room with the Highest Price
select * from room order by room_price desc;
--Get Rooms with a City View
select * from room where room_view = 'city';
--View rooms by bed type and size
select * from room where bed_type = 'queen' and room_size = 'large';
--View rooms by floor number and view
select * from room where floor_number = 5 and room_view = 'city';
--View rooms by capacity and price
select * from room where room_capacity > 3 and room_price < 6000;
--View rooms by size and number of windows
select * from room where room_size = 'large' and number_of_windows > 3;
--View rooms by bed type and balcony availability
select * from room where bed_type = 'queen' and has_balcony = 'yes';
--View rooms by floor number and bed type
select * from room where floor_number = 5 and bed_type = 'queen';
--View rooms by view and price
select * from room where room_view = 'city' and room_price < 6000;
----------------------------------------------------------------------------------------------------------------------------
--Guest table queries
--Add a new guest
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest
--View all guests
select * from guest;
--View guests by age
select * from guest where guest_age > 30;
--Update guest details
update guest set guest_age = 35 where guest_id = 1;
--Delete a guest
delete from guest where guest_id = 1;
--View guests by occupation
select * from guest where guest_occupation = 'engineer';
--View guests by blood group
select * from guest where guest_blood_group = 'A+';
--View guests by marital status
select * from guest where gust_marrital_status = 'married';
--View guests by city
select * from guest where guest_city = 'dhaka';
--View guests by postcode
select * from guest where guest_postcode = 1207;
--Count number of guests
select count(*) as total_guests from guest;
--Count number of guests by occupation
select guest_occupation, count(*) as count_guests from guest group by guest_occupation;
--Get the Oldest Guest
select * from guest order by guest_age desc;
--View guests by age and occupation
select * from guest where guest_age > 30 and guest_occupation = 'engineer';
--View guests by blood group and marital status
select * from guest where guest_blood_group = 'A+' and gust_marrital_status = 'married';
--View guests by city and postcode
select * from guest where guest_city = 'dhaka' and guest_postcode = 1207;
--View guests by age and city
select * from guest where guest_age > 30 and guest_city = 'dhaka';
----------------------------------------------------------------------------------------------------------------------
--Room Reservation table queries
--Add a new room reservation
insert into room_reservation (room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, total_day) values (1, 1, 101, 1001, '01-01-2022', '05-01-2022', 4);
--View all room reservations
select * from room_reservation;
--View room reservations by check-in date
select * from room_reservation where check_in_date = '01-01-2022';
--Update room reservation details
update room_reservation set total_day = 5 where booking_id = 101;
--Delete a room reservation
delete from room_reservation where booking_id = 101;
--View room reservations by check-out date
select * from room_reservation where check_out_date = '05-01-2022';
--View room reservations by total days
select * from room_reservation where total_day > 3;
--Count number of room reservations
select count(*) as total_reservations from room_reservation;
--Count number of room reservations by total days
select total_day, count(*) as count_reservations from room_reservation group by total_day;
--Get the Longest Room Reservation
select * from room_reservation order by total_day desc;
--View room reservations by check-in date and check-out date
select * from room_reservation where check_in_date = '01-01-2022' and check_out_date = '05-01-2022';
--View room reservations by total days and room id
select * from room_reservation where total_day > 3 and room_id = 1;
--View room reservations by guest id and booking id
select * from room_reservation where guest_id = 1 and booking_id = 101;
--View room reservations by check-in date and total days
select * from room_reservation where check_in_date = '01-01-2022' and total_day > 3;
--View room reservations by check-out date and total days
select * from room_reservation where check_out_date = '05-01-2022' and total_day > 3;
------------------------------------------------------------------------------------------------------------------------
--Event table queries
--Add a new event
insert into event (event_id, event_name, event_description, event_type, event_organizer) values (1, 'Dhaka Art Exhibition', 'An annual art exhibition in Dhaka', 'general', 'Dhaka Art Society');
--View all events
select * from event;
--View events by type
select * from event where event_type = 'general';
--Update event details
update event set event_name = 'Dhaka Art Festival' where event_id = 1;
--Delete an event
delete from event where event_id = 1;
--View events by organizer
select * from event where event_organizer = 'Dhaka Art Society';
--View events by description
select * from event where event_description like '%art%';
--View events by type and organizer
select * from event where event_type = 'general' and event_organizer = 'Dhaka Art Society';
--View events by type and description
select * from event where event_type = 'general' and event_description like '%art%';
--View events by organizer and description
select * from event where event_organizer = 'Dhaka Art Society' and event_description like '%art%';
--View events by type, organizer, and description
select * from event where event_type = 'general' and event_organizer = 'Dhaka Art Society' and event_description like '%art%';
--View events by type and rating
select * from event where event_type = 'general' and event_rating > 3;
--View events by type and venue type
select * from event where event_type = 'general' and event_venue_type = 'indoor';
--View events by type and ticket price
select * from event where event_type = 'general' and event_ticket_price < 500;
--View events by type and age restriction
select * from event where event_type = 'general' and event_age_restriction = 'none';
--View events by type and sponsor
select * from event where event_type = 'general' and event_sponsor = 'none';
--View events by type and venue
select * from event where event_type = 'general' and event_venue = 'Dhaka Convention Center';
------------------------------------------------------------------------------------------------------------------------------
--Event in Hotel table queries
--Add a new event in hotel
insert into event_in_hotel (event_id, guest_id, hotel_id, booking_id, start_date, end_date, event_capacity) values (1, 1, 1, 101, '01-01-2022', '05-01-2022', 100);
--View all events in hotel
select * from event_in_hotel;
--View events in hotel by start date
select * from event_in_hotel where start_date = '01-01-2022';
--Update event in hotel details
update event_in_hotel set event_capacity = 150 where booking_id = 101;
--Delete an event in hotel
delete from event_in_hotel where booking_id = 101;
--View events in hotel by end date
select * from event_in_hotel where end_date = '05-01-2022';
--View events in hotel by capacity
select * from event_in_hotel where event_capacity > 100;
--Count number of events in hotel
select count(*) as total_events from event_in_hotel;
--Count number of events in hotel by capacity
select event_capacity, count(*) as count_events from event_in_hotel group by event_capacity;
--Get the Event in Hotel with the Highest Capacity
select * from event_in_hotel order by event_capacity desc;
--View events in hotel by start date and end date
select * from event_in_hotel where start_date = '01-01-2022' and end_date = '05-01-2022';
--View events in hotel by capacity and event id
select * from event_in_hotel where event_capacity > 100 and event_id = 1;
--View events in hotel by guest id and hotel id
select * from event_in_hotel where guest_id = 1 and hotel_id = 1;
--View events in hotel by start date and capacity
select * from event_in_hotel where start_date = '01-01-2022' and event_capacity > 100;
--View events in hotel by end date and capacity
select * from event_in_hotel where end_date = '05-01-2022' and event_capacity > 100;
------------------------------------------------------------------------------------------------------------------------------







