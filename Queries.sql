--show pagesize and linesize 
show pagesize
show linesize 
--set another value for pagesize and linesize
set pagesize 100
set linesize 200
--show current user
show user
--checking the existing table in database
select table_name from user_tables;
--droping hotel table from database 
drop table hotel;
--see table attribute and their domain
describe hotel
--add column in a table
alter table hotel add notuncolumn varchar2(100);
describe hotel;
--Modify column definition in the table
alter table hotel modify notuncolumn integer;
describe hotel;
--Rename the column name
alter table hotel rename column notuncolumn to newcolumn;
describe hotel;
--Drop the column from table
alter table hotel drop column newcolumn;
describe hotel;
--Displaying table data using SELECT command
select * from hotel where hotel_id=1;
--Updating the data in a table
update hotel set hotel_phone='0173456789' where hotel_id=1;
--Deleting row from a table
INSERT INTO event (event_id, event_name, event_description, event_type, event_organizer) VALUES (6, 'Tangail Art Festival', 'An annual art festival in tangail', 'general', 'Tangail Art Society');
delete from  event where event_id=6;
--Union
select * from room_reservation where payment_status = 'paid'
union
select * from room_reservation where reservation_status = 'confirmed';
--intersect
select * from room_reservation where reservation_status = 'confirmed'
intersect
select * from room_reservation where payment_status = 'unpaid';
--except
select * from room_reservation where reservation_status = 'confirmed'
minus
select * from room_reservation where payment_status = 'unpaid';
--with clause
with max_price_room(value) as (select max(room_price) from room)
select * from room,max_price_room where room.room_price=max_price_room.value;
--Aggregate Function
select count(*) from guest;
select count(*) as Available_room from room;
select count(unique guest_name) as Unique_name_guest from guest;
select max(room_price) from room;
select min(room_price) from room;
select avg(room_price) from room;
select sum(room_capacity) from room;
--Group by
select room_size,avg(room_price) from room group by room_size;
--Having
select hotel_id, room_size, avg(room_price) as avg_price from room group by hotel_id, room_size having min(room_price) > 500;
--Nested Subquery
select hotel_name from hotel where hotel_id=
 (select hotel_id from room where room_id=
 (select room_id from room_reservation where guest_id=
 (select guest_id from event_in_hotel where reserv_id=103)));
