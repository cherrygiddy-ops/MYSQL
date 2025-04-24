use sql_store;
set transaction isolation level read committed;
start transaction;
select points from customers where customer_id =1;
select points from customers where customer_id =1;
commit