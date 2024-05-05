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
