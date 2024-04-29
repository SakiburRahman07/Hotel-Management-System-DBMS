--trigger for deletion
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER delete_guest
BEFORE delete ON guest 
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
BEGIN
delete from event_in_hotel where guest_id=:o.guest_id;
END;
/

delete from guest where guest_id=3;
select * from guest;
--trigger for insertion
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

-- Creating a trigger to track room's availability in case a room was reserved
CREATE OR REPLACE TRIGGER room_registry_trg
AFTER INSERT ON room_reservation
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW

BEGIN
    
    INSERT INTO room_registry VALUES(:Old.room_id, :Old.hotel_id, sysdate, 'booked');
    
END;

-- Creating a trigger to track room's availablility in case a room was cancelled

CREATE OR REPLACE TRIGGER cancel_room_registry_trg
AFTER DELETE ON room_reservation
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW

BEGIN
    
    INSERT INTO room_registry VALUES(:Old.room_id, :Old.hotel_id, sysdate, 'available');
    
END;