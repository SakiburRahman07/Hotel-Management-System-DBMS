--procedure
CREATE OR REPLACE PROCEDURE findhotel(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  var3 IN OUT NUMBER
)
AS
  t_show CHAR(30);
BEGIN
  t_show := 'Hotel Name : ';
  SELECT hotel_name INTO var2 FROM hotel WHERE hotel_id IN (SELECT hotel_id FROM room WHERE room_id=var1);
  var3 := var1 + 1; 
  DBMS_OUTPUT.PUT_LINE(t_show || var2 || ' Room ID is : ' || var1 || ' In out parameter: ' || var3);
END;
/
--call procedure using this
set serveroutput on
declare 
room_price room.room_price%type:=1;
hotel_name hotel.hotel_name%type;
extra number;
begin
findhotel(room_price,hotel_name,extra);
end;
/

--drop procedure
drop procedure findhotel;