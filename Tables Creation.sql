-- Creating all tables
CREATE TABLE hotel( hotel_id number primary key,
                    hotel_name varchar2(100),
                    hotel_address varchar2(255),
                    hotel_phone varchar2(100),
                    hotel_email varchar2(100),
                    hotel_type varchar2(100),
                    CHECK (hotel_type in ('3star' , '5star', '7star' ))
                    );
                               

CREATE TABLE room(room_id number primary key,
                    hotel_id number,
                    room_price number,
                    room_size varchar2(100),
                    room_capacity number,
                    CONSTRAINT room_fk FOREIGN KEY(hotel_id)
                    REFERENCES hotel(hotel_id),
                    CONSTRAINT room_size_ck
                    CHECK (Room_Size in ('small' , 'medium' , 'large' ))
                               );
                               
        
CREATE TABLE guest(guest_id number primary key,
                                guest_name varchar2(100),
                                guest_phone varchar2(100),
                                guest_email varchar2(100),
                                guest_address varchar2(255),
                                guest_age integer,
                                guest_gender varchar2(100) CHECK (guest_gender IN ('male', 'female')),
                                guest_nationality varchar2(100),
                                CONSTRAINT check_gender_age CHECK (
                                 (guest_gender = 'male' AND guest_age >= 5 AND guest_age <= 150) OR
                                 (guest_gender = 'female' AND guest_age >= 10 AND guest_age <= 150) 
                                  )
                                );


CREATE TABLE room_reservation(room_id number,
                                                 guest_id number,
                                                 booking_id number,
                                                 booking_invoice number,
                                                check_in_date DATE,
                                                check_out_date DATE,
                                                 CONSTRAINT reserv_pk PRIMARY KEY(room_id,guest_id),
                                                 FOREIGN KEY(room_id) REFERENCES room(room_id),
                                                 FOREIGN KEY(guest_id) REFERENCES guest(guest_id),
                                                 reservation_status VARCHAR2(100) DEFAULT 'confirmed' CHECK (reservation_status IN ('confirmed', 'cancelled', 'completed')),
                                                 payment_status VARCHAR2(100) DEFAULT 'unpaid' CHECK (payment_status IN ('paid', 'unpaid')),
                                                CONSTRAINT checkout_check CHECK (
                                                (check_out_date > check_in_date)
                                                )
                                                 );
                                                 
               
CREATE TABLE event( event_id number primary key,
                    event_name varchar2(100),
                    event_description VARCHAR2(255),
                    event_type VARCHAR2(100) DEFAULT 'general' CHECK (event_type IN ('general', 'wedding', 'conference', 'seminar')),
                    event_organizer varchar2(255)
                                );
                                
          
CREATE TABLE event_in_hotel(event_id number,
                                              guest_id number,
                                              reserv_id number,
                                              start_date date,
                                              end_date date,
                                              event_invoice number,
                                              event_capacity integer,
                                            event_status VARCHAR2(100) DEFAULT 'scheduled' CHECK (event_status IN ('scheduled', 'ongoing', 'completed', 'cancelled')),
                                              CONSTRAINT room_hotel_pk PRIMARY KEY(event_id,guest_id),
                                              CONSTRAINT date_check CHECK (
                                                (end_date > start_date)
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