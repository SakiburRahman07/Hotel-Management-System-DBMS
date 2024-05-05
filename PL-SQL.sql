--PL/SQL variable declaration and print value
set serveroutput on
declare 
h_name hotel.hotel_name%type;
h_address hotel.hotel_address%type;
h_phone HOTEL.HOTEL_PHONE%type;
begin
select hotel_name,hotel_address,hotel_phone into h_name,h_address,h_phone from hotel where hotel_id = 
(select hotel_id from room where room_id=2);
dbms_output.put_line('Hotel Name : '||h_name|| ' Hotel Address: '||h_address || ' h_phone: '||h_phone);
end;
/
--Insert and set default value
set serveroutput on
declare 
r_id room.room_id%type:=11;
h_id room.hotel_id%type:=1;
r_price ROOM.ROOM_PRICE%type:=250;
r_size ROOM.ROOM_SIZE%type:='small';
r_capacity number:=7;
r_view ROOM.ROOM_VIEW%type:='sea';
f_no ROOM.FLOOR_NUMBER%type:=3;
b_type ROOM.BED_TYPE%type:='queen';
h_balcony ROOM.HAS_BALCONY%type:='yes';
no_of_w ROOM.NUMBER_OF_WINDOWS%type:=3;
r_des ROOM.room_description%type:='well organized';

begin
insert into room values(r_id,h_id,r_price,r_size,r_capacity,r_view,f_no,b_type,h_balcony,no_of_w,r_des);
end;
/
--row type
set serveroutput on
declare 
hotel_row hotel%rowtype;
begin
select hotel_id,hotel_name,hotel_address, hotel_phone into hotel_row.hotel_id,hotel_row.hotel_name,hotel_row.hotel_address, hotel_row.hotel_phone from hotel where hotel_id=1;
end;
/
--Cursor and row count
set serveroutput on
declare 
cursor room_cursor is select room_id, hotel_id, room_price, room_size, room_capacity from room;
room_row room%rowtype;
begin
open room_cursor;
fetch room_cursor into room_row.room_id,room_row.hotel_id,room_row.room_price,room_row.room_size,room_row.room_capacity;
while room_cursor%found loop
dbms_output.put_line('Room ID : '||room_row.room_id|| ' Hotel ID : '||room_row.hotel_id || ' Room Price : ' ||room_row.room_price || ' Room Size : '||room_row.room_size || 'Room Capacity : ' || room_row.room_capacity);
dbms_output.put_line('Room count: '|| room_cursor%rowcount);
fetch room_cursor into room_row.room_id,room_row.hotel_id,room_row.room_price,room_row.room_size,room_row.room_capacity;
end loop;
close room_cursor;
end;
/


