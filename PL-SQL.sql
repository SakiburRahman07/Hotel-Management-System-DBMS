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
cursor room_cursor is select * from room;
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
--FOR LOOP/WHILE LOOP/ARRAY with extend() function
set serveroutput on
declare 
  counter number;
  h_name hotel.hotel_name%type;
  TYPE NAMEARRAY IS VARRAY(5) OF hotel.hotel_name%type; 
  H_ARRAY NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 1..5  
  loop
    select hotel_name into h_name from hotel where hotel_id=x;
    H_ARRAY.EXTEND();
    H_ARRAY(counter):=h_name;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=H_ARRAY.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(H_ARRAY(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/
--ARRAY without extend() function
DECLARE 
   counter NUMBER := 1;
   h_name hotel.hotel_name%TYPE;
   TYPE HOTELNAME IS VARRAY(5) OF hotel.hotel_name%TYPE;
   HOTELARRAY HOTELNAME:=HOTELNAME('Hotel 1', 'Hotel 2', 'Hotel 3', 'Hotel 4', 'Hotel 5'); 
BEGIN
   counter := 1;
   FOR x IN 1..5  
   LOOP
      SELECT hotel_name INTO H_name FROM hotel WHERE hotel_id=x;
      HOTELARRAY(counter) := h_name;
      counter := counter + 1;
   END LOOP;
   counter := 1;
   WHILE counter <= HOTELARRAY.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(HOTELARRAY(counter)); 
      counter := counter + 1;
   END LOOP;
END;

--function
set serveroutput on
create or replace function eventshow(var1 in varchar) return varchar AS
value event.event_name%type;
begin
  select event_name into value from event where event_id=var1; 
  DBMS_OUTPUT.PUT_LINE(value);
   return value;
end;
/
--call the function
set serveroutput on
declare 
value varchar(100);
begin
value:=eventshow(3);
end;
/
--IF /ELSEIF /ELSE
DECLARE
    TYPE NameArray IS VARRAY(5) OF room.room_id%TYPE;
    r_id NameArray := NameArray(1, 2, 3, 4, 5);
    r_price room.room_price%TYPE;
BEGIN
    FOR i IN 1..r_id.COUNT LOOP
        SELECT room_price
        INTO r_price
        FROM room
        WHERE room_id = r_id(i);
        IF r_price > 6000 THEN
            DBMS_OUTPUT.PUT_LINE(r_id(i) || ' is Expensive.');
        ELSIF r_price > 1000 THEN
            DBMS_OUTPUT.PUT_LINE(r_id(i) || ' is Medium Expensive.');
        ELSE
            DBMS_OUTPUT.PUT_LINE(r_id(i) || ' is not expensive.');
        END IF;
    END LOOP;
END;
