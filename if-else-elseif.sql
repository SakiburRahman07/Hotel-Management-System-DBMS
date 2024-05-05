
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
