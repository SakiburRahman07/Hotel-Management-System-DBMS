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
begin
insert into room values(r_id,h_id,r_price,r_size,r_capacity);
end;
/