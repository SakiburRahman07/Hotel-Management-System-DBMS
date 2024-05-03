--hotel table
create table hotel(
    hotel_id number primary key,
    hotel_name varchar2(100),
    hotel_address varchar2(255),
    hotel_phone varchar2(100),
    hotel_email varchar2(100),
    hotel_type varchar2(100),
    check (hotel_type in ('3star', '5star', '7star')),
    constraint hotel_phone_ck check (
        length(hotel_phone) = 11
    ),
    hotel_city varchar2(100),
    hotel_postcode number,
    number_of_rooms number,
    hotel_rating number check (hotel_rating >= 0 and hotel_rating <= 5),
    hotel_website varchar2(255),
    hotel_description varchar2(255),
    hotel_opening_hour varchar2(100),
    hotel_closing_hour varchar2(100),
    has_parking varchar2(100) check (has_parking in ('yes', 'no')),
    has_pool varchar2(100) check (has_pool in ('yes', 'no'))
);
--room table
create table room(
    room_id number primary key,
    hotel_id number,
    room_price number,
    room_size varchar2(100),
    room_capacity number,
    room_view varchar2(255) check (room_view in ('city', 'river', 'sea', 'mountain', 'garden', 'other')),
    floor_number number,
    bed_type varchar2(50) check (bed_type IN ('queen', 'king', 'double', 'twin', 'bunk')),
    has_balcony varchar2(100) check (has_balcony in ('yes', 'no')),
    number_of_windows number,
    room_description varchar2(255),
    foreign key(hotel_id) references hotel(hotel_id) on delete cascade,
    constraint room_size_ck
        check (room_size in ('small', 'medium', 'large'))
);
--guest table
create table guest(
    guest_id number primary key,
    guest_name varchar2(100),
    guest_phone varchar2(100) check (length(guest_phone) = 11),
    guest_email varchar2(100),
    guest_address varchar2(255),
    guest_occupation varchar2(100),
    guest_age integer,
    gust_marrital_status varchar2(100) default 'single' check (gust_marrital_status in ('single', 'married', 'divorced', 'widowed')),
    guest_blood_group varchar2(10) check (guest_blood_group in ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    guest_nid_number varchar2(100),
    guest_father_name varchar2(100),
    guest_city varchar2(100),
    guest_postcode number,
    guest_birthdate date,
    emmergency_contact_number varchar2(100) check (length(emmergency_contact_number) = 11),
    guest_gender varchar2(100) check (guest_gender in ('male', 'female')),
    guest_nationality varchar2(100),
    constraint check_gender_age check (
        (guest_gender = 'male' and guest_age >= 5 and guest_age <= 150) or
        (guest_gender = 'female' and guest_age >= 7 and guest_age <= 150)
    )
);
--room reservation table
create table room_reservation(
    room_id number,
    guest_id number,
    booking_id number,
    booking_invoice number,
    check_in_date date,
    check_out_date date,
    total_day number,
    total_price number,
    confirmed_by varchar2(100),
    reservation_timestamp timestamp default current_timestamp,
    primary key(room_id, guest_id),
    foreign key(room_id) references room(room_id) on delete cascade,
    foreign key(guest_id) references guest(guest_id) on delete cascade,
    reservation_status varchar2(100) default 'confirmed' check (reservation_status in ('confirmed', 'cancelled', 'completed')),
    payment_status varchar2(100) default 'unpaid' check (payment_status in ('paid', 'unpaid')),
    constraint checkout_check check (
        check_out_date > check_in_date
    )
);
--event table
create table event(
    event_id number primary key,
    event_name varchar2(100),
    event_description varchar2(255),
    event_type varchar2(100) default 'general' check (event_type in ('general', 'wedding', 'conference', 'seminar')),
    event_organizer varchar2(255),
    event_rating number check (event_rating >= 0 and event_rating <= 5),
    event_sponsor varchar2(255),
    event_age_restriction varchar2(100) default 'none',
    event_ticket_price number,
    event_venue varchar2(255),
    event_venue_address varchar2(255),
    event_venue_type varchar2(100) default 'indoor' check (event_venue_type in ('indoor', 'outdoor')),	
    event_transportation_info varchar2(255),
    event_terms_condition varchar2(255)
);
--event in hotel table
create table event_in_hotel(
    event_id number,
    guest_id number,
    hotel_id number,
    booking_id number,
    start_date date,
    end_date date,
    event_invoice number,
    event_capacity integer,
    event_weather varchar2(100),
    event_food varchar2(100),
    event_theme varchar2(100),
    event_dress_code varchar2(100),
    event_music varchar2(100) check (event_music in ('live', 'dj', 'orchestra', 'other')),
    event_status varchar2(100) default 'scheduled' check (event_status in ('scheduled', 'ongoing', 'completed', 'cancelled')),
    constraint room_hotel_pk primary key(event_id, guest_id),
    foreign key(event_id) references event(event_id) on delete cascade,
    foreign key(guest_id) references guest(guest_id) on delete cascade,
    foreign key(hotel_id) references hotel(hotel_id) on delete cascade,
    constraint date_check check (
        end_date > start_date
    )
);



SELECT * FROM hotel;
SELECT * FROM room;
SELECT * FROM guest;
SELECT * FROM event;
SELECT * FROM room_reservation;
SELECT * FROM event_in_hotel;
