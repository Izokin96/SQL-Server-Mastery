-- I worked with the "agenda" table which stores information about friends.
-- 1- Delete the "agenda" table if it exists:
if object_id('agenda') is not null
  drop table agenda;

-- 2- Create a table called "agenda". It should have the following fields: last name (string of 30), 
CREATE TABLE agenda(
    lastname VARCHAR(30),
    firstname VARCHAR(20),
    address VARCHAR(30),
    phone VARCHAR(11)
);

-- 3- View the existing tables to verify the creation of "agenda"
EXEC sp_tables @table_owner='dbo';

-- 4- View the structure of the "agenda" table (sp_columns).
EXEC sp_columns agenda;

-- 5- Insert the following records:
INSERT INTO agenda (lastname, firstname, address, phone)
  VALUES ('Moreno','Alberto','Colon 123','4234567');
INSERT INTO agenda (lastname, firstname, address, phone)
  VALUES ('Torres','Juan','Avellaneda 135','4458787');

-- 6- Select all records from the table:
select * from agenda;

-- 7- Delete the "agenda" table:
drop table agenda;

-- 8- Try deleting the table again (an error message will appear):
drop table agenda;
