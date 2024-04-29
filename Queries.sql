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