use sql_store2;
alter table customers add last_name varchar(50) not null after first_name,
add city varchar(50) not null,
modify first_name varchar(55),
modify first_name varchar (55) not null default  " ";