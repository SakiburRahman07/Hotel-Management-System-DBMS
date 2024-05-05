-------------------------------------------------------------------------add new hotel--------------------------------------------------------------------
create or replace procedure insert_hotel_data (
hotel_id in number,
hotel_name in varchar2,
hotel_address in varchar2,
hotel_phone in varchar2,
hotel_email in varchar2,
hotel_type in varchar2,
hotel_city in varchar2,
hotel_postcode in number, 
number_of_rooms in number,
hotel_rating in number, 
hotel_website in varchar2, 
hotel_description in varchar2, 
hotel_opening_hour in varchar2, 
hotel_closing_hour in varchar2, 
has_parking in varchar2,
has_pool in varchar2
) as
begin
insert into hotel (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool) 
values (hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email, hotel_type, hotel_city, hotel_postcode, number_of_rooms, hotel_rating, hotel_website, hotel_description, hotel_opening_hour, hotel_closing_hour, has_parking, has_pool);
dbms_output.put_line('data inserted successfully.');
end;
/
 call this function
set serveroutput on
declare
begin
    insert_hotel_data(6, 'rajshahi royal', 'rajshahi', '01987654321', 'royal@rajshahiroyal.com', '5star', 'rajshahi', 6200, 120, 5.0, 'www.rajshahiroyal.com', 'modern 5-star hotel in rajshahi', '09:00', '23:00', 'yes', 'no');
end;
/
---------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------add room-------------------------------------------------------------------------	
create or replace procedure add_room (
    room_id in number,
    hotel_id in number,
    room_price in number,
    room_size in varchar2,
    room_capacity in number,
    room_view in varchar2,
    floor_number in number,
    bed_type in varchar2,
    has_balcony in varchar2,
    number_of_windows in number,
    room_description in varchar2
) as
begin
    insert into room (
        room_id, hotel_id, room_price, room_size, room_capacity, room_view,
        floor_number, bed_type, has_balcony, number_of_windows, room_description
    ) values (
        room_id, hotel_id, room_price, room_size, room_capacity, room_view,
        floor_number, bed_type, has_balcony, number_of_windows, room_description
    );

    dbms_output.put_line('Added new room.');
    dbms_output.put_line('Room ID : ' || room_id);
    dbms_output.put_line('Hotel ID : ' || hotel_id);
    dbms_output.put_line('Room Price : ' || room_price);
end;
/
--call this funciton
set serveroutput on
declare
begin
    add_room(6, 5, 10000, 'large', 4, 'garden', 4, 'double', 'yes', 3, 'Garden view room with double bed');
end;
/
------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------add new guest-------------------------------------------------------------------
create or replace procedure add_guest (
guest_id in number,
guest_name in varchar2, 
guest_phone in varchar2, 
guest_email in varchar2, 
guest_address in varchar2, 
guest_occupation in varchar2, 
guest_age in number, 
gust_marrital_status in varchar2, 
guest_blood_group in varchar2, 
guest_nid_number in varchar2, 
guest_father_name in varchar2, 
guest_city in varchar2, 
guest_postcode in integer, 
guest_birthdate in date, 
emmergency_contact_number in varchar2, 
guest_gender in varchar2, 
guest_nationality in varchar2
) as
begin
insert into guest (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality) 
values (guest_id, guest_name, guest_phone, guest_email, guest_address, guest_occupation, guest_age, gust_marrital_status, guest_blood_group, guest_nid_number, guest_father_name, guest_city, guest_postcode, guest_birthdate, emmergency_contact_number, guest_gender, guest_nationality);
dbms_output.put_line('Added new guest. ' || 'Guest ID : ' || guest_id || 'Guest Name : ' || guest_name);
end;
/
-- call this function
set serveroutput on
declare
begin
    add_guest(6, 'amina chowdhury', '01734567890', 'amina@example.com', '32 uttara, dhaka', 'artist', 30, 'widowed', 'O-', '7890123456', 'karim chowdhury', 'dhaka', 1230, to_date('1993-11-10', 'yyyy-mm-dd'), '01723456789', 'female', 'bangladeshi');
end;
/
--------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------Reserve a room-------------------------------------------------------------------
create or replace procedure add_room_reservation (
    room_id in number,
    guest_id in number,
    booking_id in number,
    booking_invoice in number,
    check_in_date in date,
    check_out_date in date,
    total_day in number,
    total_price in number,
    confirmed_by in varchar2,
    reservation_status in varchar2 default 'confirmed',
    payment_status in varchar2 default 'unpaid'
) as
begin
    insert into room_reservation (
        room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, total_day, total_price, confirmed_by, reservation_timestamp, reservation_status, payment_status
    ) values (
        room_id,
        guest_id,
        booking_id,
        booking_invoice,
        check_in_date,
        check_out_date,
        total_day,
        total_price,
        confirmed_by,
        current_timestamp,
        reservation_status,
        payment_status
    );
    dbms_output.put_line('added new room reservation.');
    dbms_output.put_line('room id : ' || room_id || ', guest id : ' || guest_id);
    dbms_output.put_line('booking id : ' || booking_id || ', booking invoice : ' || booking_invoice);
    dbms_output.put_line('check-in date : ' || to_char(check_in_date, 'yyyy-mm-dd'));
    dbms_output.put_line('check-out date : ' || to_char(check_out_date, 'yyyy-mm-dd'));
    dbms_output.put_line('reservation status : ' || reservation_status);
    dbms_output.put_line('payment status : ' || payment_status);
end;
/
--call this funciton
set serveroutput on;
declare
begin
    add_room_reservation(4, 5, 105, 1005, date '2024-09-05', date '2024-09-08', 3, 30000.00, 'manager hossain', 'cancelled', 'unpaid');
end;
/
----------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------add event------------------------------------------------------------------- 
create or replace procedure add_event (
    event_id in number,
    event_name in varchar2,
    event_description in varchar2,
    event_type in varchar2 default 'general',
    event_organizer in varchar2,
    event_rating in number,
    event_sponsor in varchar2,
    event_age_restriction in varchar2 default 'none',
    event_ticket_price in number,
    event_venue in varchar2,
    event_venue_address in varchar2,
    event_venue_type in varchar2 default 'indoor',
    event_transportation_info in varchar2,
    event_terms_condition in varchar2
) as
begin
    insert into event (
        event_id,
        event_name,
        event_description,
        event_type,
        event_organizer,
        event_rating,
        event_sponsor,
        event_age_restriction,
        event_ticket_price,
        event_venue,
        event_venue_address,
        event_venue_type,
        event_transportation_info,
        event_terms_condition
    ) values (
        event_id,
        event_name,
        event_description,
        event_type,
        event_organizer,
        event_rating,
        event_sponsor,
        event_age_restriction,
        event_ticket_price,
        event_venue,
        event_venue_address,
        event_venue_type,
        event_transportation_info,
        event_terms_condition
    );

    dbms_output.put_line('added new event.');
    dbms_output.put_line('event id : ' || event_id || ', event name : ' || event_name);
    dbms_output.put_line('event type : ' || event_type);
    dbms_output.put_line('event organizer : ' || event_organizer);
end;
/
--call this function
set serveroutput on;
declare
begin
    add_event(
        1001,            
        'Annual Conference',
        'A conference about industry trends',
        'conference',
        'Global Events Co.',
        4.5,
        'Tech Corp',
        'adults only',
        200.00,
        'Convention Center',
        '123 Main St, Springfield',
        'indoor',
        'Buses provided from city center',
        'No cancellations allowed'
    );
end;
/
----------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------Reservation for event-------------------------------------------------------------------
create or replace procedure add_event_in_hotel (
    event_id in number,
    guest_id in number,
    hotel_id in number,
    booking_id in number,
    start_date in date,
    end_date in date,
    event_invoice in number,
    event_capacity in integer,
    event_weather in varchar2,
    event_food in varchar2,
    event_theme in varchar2,
    event_dress_code in varchar2,
    event_music in varchar2 default 'live',
    event_status in varchar2 default 'scheduled'
) as
begin
    insert into event_in_hotel (
        event_id,
        guest_id,
        hotel_id,
        booking_id,
        start_date,
        end_date,
        event_invoice,
        event_capacity,
        event_weather,
        event_food,
        event_theme,
        event_dress_code,
        event_music,
        event_status
    ) values (
        event_id,
        guest_id,
        hotel_id,
        booking_id,
        start_date,
        end_date,
        event_invoice,
        event_capacity,
        event_weather,
        event_food,
        event_theme,
        event_dress_code,
        event_music,
        event_status
    );
    dbms_output.put_line('Added new event in hotel.');
    dbms_output.put_line('Event ID: ' || event_id || ', Guest ID: ' || guest_id || ', Hotel ID: ' || hotel_id);
end;
/
----------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------cancel room reservation-------------------------------------------------------------------
create or replace procedure cancel_room_reservation (
    r_id in number,
    g_id in number
) as
begin
    update room_reservation
    set reservation_status = 'cancelled'
    where room_id = r_id
    and guest_id = g_id;
    dbms_output.put_line('cancelled room reservation.');
    dbms_output.put_line('room id: ' || r_id || ', guest id: ' || g_id);
end;
/
--call this function
set serveroutput on;
declare
begin
    cancel_room_reservation(1,1);
end;
/
-------------------------------------------------------------------------------------FIND HOTEL---------------------------------------------
--------------------------------------------------------------------- Creating a function to retrieve a hotel-------------------------------------------------------------------
create or replace procedure find_hotels (
    hotel_city in varchar2 default null,
    hotel_rating in number default null,
    hotel_type in varchar2 default null,
    number_of_rooms in number default null,
    has_parking in varchar2 default null,
    has_pool in varchar2 default null
) as
begin
    dbms_output.put_line('searching for hotels...');
    for hotel_row in (
        select hotel_id, hotel_name, hotel_address, hotel_phone, hotel_email,
            hotel_city, hotel_postcode, hotel_rating, hotel_website, hotel_description,
            hotel_opening_hour, hotel_closing_hour, has_parking, has_pool
        from hotel
        where (hotel_city is null or hotel_city = hotel_city)
        and (hotel_rating is null or hotel_rating = hotel_rating)
        and (hotel_type is null or hotel_type = hotel_type)
        and (number_of_rooms is null or number_of_rooms = number_of_rooms)
        and (has_parking is null or has_parking = has_parking)
        and (has_pool is null or has_pool = has_pool)
    ) loop
        dbms_output.put_line('hotel id: ' || hotel_row.hotel_id);
        dbms_output.put_line('hotel name: ' || hotel_row.hotel_name);
        dbms_output.put_line('hotel address: ' || hotel_row.hotel_address);
        dbms_output.put_line('hotel phone: ' || hotel_row.hotel_phone);
        dbms_output.put_line('hotel email: ' || hotel_row.hotel_email);
        dbms_output.put_line('hotel city: ' || hotel_row.hotel_city);
        dbms_output.put_line('hotel postcode: ' || hotel_row.hotel_postcode);
        dbms_output.put_line('hotel rating: ' || hotel_row.hotel_rating);
        dbms_output.put_line('hotel website: ' || hotel_row.hotel_website);
        dbms_output.put_line('hotel description: ' || hotel_row.hotel_description);
        dbms_output.put_line('hotel opening hour: ' || hotel_row.hotel_opening_hour);
        dbms_output.put_line('hotel closing hour: ' || hotel_row.hotel_closing_hour);
        dbms_output.put_line('has parking: ' || hotel_row.has_parking);
        dbms_output.put_line('has pool: ' || hotel_row.has_pool);
        dbms_output.put_line('---');
    end loop;

end;
/
--call the function
set serveroutput on;
begin
    find_hotels(
        'new york', 
        null,     
        '5star',   
        null,    
        'yes',     
        'yes'      
    );
end;
/
--------------------------------------------------FIND ROOM---------------------------------------------
-- Creating a function to retrieve room details
create or replace procedure find_rooms (
    hotel_id in number default null,
    room_size in varchar2 default null,
    room_capacity in number default null,
    room_view in varchar2 default null,
    floor_number in number default null,
    bed_type in varchar2 default null,
    has_balcony in varchar2 default null,
    number_of_windows in number default null,
    room_description in varchar2 default null
) as
begin
    dbms_output.put_line('searching for rooms...');
    for room_row in (
        select room_id, room_price, room_size, room_capacity, room_view,
            floor_number, bed_type, has_balcony, number_of_windows, room_description
        from room
        where (hotel_id is null or hotel_id = hotel_id)
        and (room_size is null or room_size = room_size)
        and (room_capacity is null or room_capacity = room_capacity)
        and (room_view is null or room_view = room_view)
        and (floor_number is null or floor_number = floor_number)
        and (bed_type is null or bed_type = bed_type)
        and (has_balcony is null or has_balcony = has_balcony)
        and (number_of_windows is null or number_of_windows = number_of_windows)
        and (room_description is null or room_description = room_description)
    ) loop
        dbms_output.put_line('room id: ' || room_row.room_id);
        dbms_output.put_line('room price: ' || room_row.room_price);
        dbms_output.put_line('room size: ' || room_row.room_size);
        dbms_output.put_line('room capacity: ' || room_row.room_capacity);
        dbms_output.put_line('room view: ' || room_row.room_view);
        dbms_output.put_line('floor number: ' || room_row.floor_number);
        dbms_output.put_line('bed type: ' || room_row.bed_type);
        dbms_output.put_line('has balcony: ' || room_row.has_balcony);
        dbms_output.put_line('number of windows: ' || room_row.number_of_windows);
        dbms_output.put_line('room description: ' || room_row.room_description);
        dbms_output.put_line('---');
    end loop;
end;
/
--call this function
set serveroutput on;
begin
    find_rooms(
        null,         
        'medium',  
        3,        
        'sea',   
        null,      
        'queen',  
        'yes',     
        2,         
        null      
    );
end;
/
--------------------------------------------------FIND ROOM RESERVATION---------------------------------------------
-- Creating a function to retrieve room_reservation details
create or replace procedure find_room_reservations (
    room_id in number default null,
    guest_id in number default null,
    booking_id in number default null,
    reservation_status in varchar2 default null,
    payment_status in varchar2 default null,
    check_in_date in date default null,
    check_out_date in date default null
) as
begin
    dbms_output.put_line('searching for room reservations...');
    for reservation_row in (
        select room_id, guest_id, booking_id, booking_invoice,
            check_in_date, check_out_date, total_day, total_price,
            confirmed_by, reservation_timestamp, reservation_status,
            payment_status
        from room_reservation
        where (room_id is null or room_id = room_id)
        and (guest_id is null or guest_id = guest_id)
        and (booking_id is null or booking_id = booking_id)
        and (reservation_status is null or reservation_status = reservation_status)
        and (payment_status is null or payment_status = payment_status)
        and (check_in_date is null or check_in_date = check_in_date)
        and (check_out_date is null or check_out_date = check_out_date)
    ) loop
        dbms_output.put_line('room id: ' || reservation_row.room_id);
        dbms_output.put_line('guest id: ' || reservation_row.guest_id);
        dbms_output.put_line('booking id: ' || reservation_row.booking_id);
        dbms_output.put_line('booking invoice: ' || reservation_row.booking_invoice);
        dbms_output.put_line('check in date: ' || reservation_row.check_in_date);
        dbms_output.put_line('check out date: ' || reservation_row.check_out_date);
        dbms_output.put_line('total day: ' || reservation_row.total_day);
        dbms_output.put_line('total price: ' || reservation_row.total_price);
        dbms_output.put_line('confirmed by: ' || reservation_row.confirmed_by);
        dbms_output.put_line('reservation timestamp: ' || reservation_row.reservation_timestamp);
        dbms_output.put_line('reservation status: ' || reservation_row.reservation_status);
        dbms_output.put_line('payment status: ' || reservation_row.payment_status);
        dbms_output.put_line('---');
    end loop;
end;
/
--call this function
set serveroutput on;
begin
    find_room_reservations(
        1,       
        1,         
        null,     
        'confirmed',
        'paid',    
        to_date('2024-05-10', 'yyyy-mm-dd'), 
        null       
    );
end;
/
---------------------------------------FIND EVENT RESERVATION---------------------------------------------
create or replace procedure find_event_reservations (
    event_id in number default null,
    guest_id in number default null,
    hotel_id in number default null,
    booking_id in number default null,
    event_status in varchar2 default null,
    start_date in date default null,
    end_date in date default null
) as
begin
    dbms_output.put_line('searching for event reservations...');
    for reservation_row in (
        select event_id, guest_id, hotel_id, booking_id,
            start_date, end_date, event_invoice, event_capacity,
            event_weather, event_food, event_theme, event_dress_code,
            event_music, event_status
        from event_in_hotel
        where (event_id is null or event_id = event_id)
        and (guest_id is null or guest_id = guest_id)
        and (hotel_id is null or hotel_id = hotel_id)
        and (booking_id is null or booking_id = booking_id)
        and (event_status is null or event_status = event_status)
        and (start_date is null or start_date = start_date)
        and (end_date is null or end_date = end_date)
    ) loop
        -- print details of each matching event reservation
        dbms_output.put_line('event id: ' || reservation_row.event_id);
        dbms_output.put_line('guest id: ' || reservation_row.guest_id);
        dbms_output.put_line('hotel id: ' || reservation_row.hotel_id);
        dbms_output.put_line('booking id: ' || reservation_row.booking_id);
        dbms_output.put_line('start date: ' || reservation_row.start_date);
        dbms_output.put_line('end date: ' || reservation_row.end_date);
        dbms_output.put_line('event invoice: ' || reservation_row.event_invoice);
        dbms_output.put_line('event capacity: ' || reservation_row.event_capacity);
        dbms_output.put_line('event weather: ' || reservation_row.event_weather);
        dbms_output.put_line('event food: ' || reservation_row.event_food);
        dbms_output.put_line('event theme: ' || reservation_row.event_theme);
        dbms_output.put_line('event dress code: ' || reservation_row.event_dress_code);
        dbms_output.put_line('event music: ' || reservation_row.event_music);
        dbms_output.put_line('event status: ' || reservation_row.event_status);
        dbms_output.put_line('---');
    end loop;

end;
/
--call this function
set serveroutput on;
begin
    find_event_reservations(
        2,          
        3,         
        1,          
        null,      
        'completed', 
        to_date('2024-05-10', 'yyyy-mm-dd'), 
        to_date('2024-05-15', 'yyyy-mm-dd') 
    );
end;
/







