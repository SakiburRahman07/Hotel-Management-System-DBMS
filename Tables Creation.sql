-- Creating all tables
create table hotel(
    hotel_id number primary key,
    hotel_name varchar2(100),
    hotel_address varchar2(255),
    hotel_phone varchar2(100),
    hotel_email varchar2(100),
    hotel_type varchar2(100),
    check (hotel_type in ('3star', '5star', '7star'))
);

create table room(
    room_id number primary key,
    hotel_id number,
    room_price number,
    room_size varchar2(100),
    room_capacity number,
    foreign key(hotel_id) references hotel(hotel_id) on delete cascade,
    constraint room_size_ck
        check (room_size in ('small', 'medium', 'large'))
);

create table guest(
    guest_id number primary key,
    guest_name varchar2(100),
    guest_phone varchar2(100),
    guest_email varchar2(100),
    guest_address varchar2(255),
    guest_age integer,
    guest_gender varchar2(100) check (guest_gender in ('male', 'female')),
    guest_nationality varchar2(100),
    constraint check_gender_age check (
        (guest_gender = 'male' and guest_age >= 5 and guest_age <= 150) or
        (guest_gender = 'female' and guest_age >= 10 and guest_age <= 150)
    )
);

create table room_reservation(
    room_id number,
    guest_id number,
    booking_id number,
    booking_invoice number,
    check_in_date date,
    check_out_date date,
    primary key(room_id, guest_id),
    foreign key(room_id) references room(room_id) on delete cascade,
    foreign key(guest_id) references guest(guest_id) on delete cascade,
    reservation_status varchar2(100) default 'confirmed' check (reservation_status in ('confirmed', 'cancelled', 'completed')),
    payment_status varchar2(100) default 'unpaid' check (payment_status in ('paid', 'unpaid')),
    constraint checkout_check check (
        check_out_date > check_in_date
    )
);

create table event(
    event_id number primary key,
    event_name varchar2(100),
    event_description varchar2(255),
    event_type varchar2(100) default 'general' check (event_type in ('general', 'wedding', 'conference', 'seminar')),
    event_organizer varchar2(255)
);

create table event_in_hotel(
    event_id number,
    guest_id number,
    reserv_id number,
    start_date date,
    end_date date,
    event_invoice number,
    event_capacity integer,
    event_status varchar2(100) default 'scheduled' check (event_status in ('scheduled', 'ongoing', 'completed', 'cancelled')),
    constraint room_hotel_pk primary key(event_id, guest_id),
    constraint date_check check (
        end_date > start_date
    )
);




-- Creating a table that restores the availability of the room
CREATE TABLE room_registry(room_id number, 
                                            hotel_id number,
                                            registry_date date,
                                            room_availability varchar2(25),
                                            CONSTRAINT registry_pk PRIMARY KEY(room_id, registry_date),
                                            CHECK (Room_Availability in ('available' , 'booked' ))
                                            );

SELECT * FROM hotel;
SELECT * FROM room;
SELECT * FROM guest;
SELECT * FROM event;
SELECT * FROM room_reservation;
SELECT * FROM event_in_hotel;
SELECT * FROM room_registry;	