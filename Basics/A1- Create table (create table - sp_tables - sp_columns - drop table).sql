if object_id('usuarios') is not null --condition to delete a table
  drop table usuarios;

create table usuarios ( --table creation
  name varchar(30),
  password varchar(10)
);

exec sp_tables @table_owner='dbo'; --execute command to show the table

exec sp_columns usuarios; --execute command to show columns of the table 'usuarios'

drop table usuarios; --delete the table 'usuarios'

exec sp_tables @table_owner='dbo'; --execute command to show tables again
