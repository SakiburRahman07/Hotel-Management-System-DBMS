

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
--drop procedure
drop procedure findhotel;
--drop function
drop function eventshow;