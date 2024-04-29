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
