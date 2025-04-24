use sql_store2;

drop table if exists orders;
drop table if exists customers ;

create table if not exists customers
(
customer_id int primary key auto_increment,
first_name  varchar(55) not null default  ' ',
last_name varchar(50) not null ,
points int not null default 0,
email varchar(255) not null unique
);

create table if not exists orders
(
order_id int primary key auto_increment,
customer_id int not null,
foreign key fk_orders_customers (customer_id)
      references  customers  (customer_id)
      on update cascade
      on delete restrict
      );


