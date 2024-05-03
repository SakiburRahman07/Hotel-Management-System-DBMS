--table create for storing history of guest
create table guest_history_trigger(
    guest_id number,
    guest_leave_time timestamp default current_timestamp,
    guest_name varchar2(100),
    guest_phone varchar2(100) check (length(guest_phone) = 11),
    guest_address varchar2(255),
    guest_nid_number varchar2(100),
    guest_gender varchar2(100) check (guest_gender in ('male', 'female'))  
);

--trigger for deletion which will insert data into guest_history_trigger
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER delete_guest
BEFORE delete ON guest 
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
BEGIN
insert into guest_history_trigger (guest_id, guest_name, guest_phone, guest_address, guest_nid_number, guest_gender) 
values(:o.guest_id, :o.guest_name, :o.guest_phone, :o.guest_address, :o.guest_nid_number, :o.guest_gender); 
END;
/

delete from guest where guest_id=5;
select * from guest_history_trigger;

--trigger for update
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER updateevent
AFTER UPDATE ON event
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
BEGIN
    UPDATE event_in_hotel
    SET event_id = :n.event_id
    WHERE event_id = :o.event_id;
    
END;
/

update event set event_id=1 where event_id=9;
select * from event_in_hotel;


--trigger for insertion where total day and totol price of guest automatically calculated
set serveroutput on
create or replace trigger day_price
before insert on room_reservation
referencing new as n old as o
for each row
declare 
r_price number;
r_day number;
begin
select room_price into r_price from room where room_id = :n.room_id;
r_day:= :n.check_out_date - :n.check_in_date;
:n.total_day:=r_day;
:n.total_price := r_day* r_price;
end;
/

insert into room_reservation(room_id, guest_id, booking_id, booking_invoice, check_in_date, check_out_date, confirmed_by)
values(4,4,5,107,date '2024-05-01', date '2024-05-07', 'admin' );


--show error
show errors;
--show all trigger
select * from user_triggers;
--drop trigger
drop trigger updateevent;