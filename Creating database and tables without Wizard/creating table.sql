use sql_store2;
create table if not exists customers (
customer_id  int primary key auto_increment,
first_name varchar(50)  not null,
points  int not null default 0,
email varchar(255) not null unique);

