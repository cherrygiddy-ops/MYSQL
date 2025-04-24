use sql_store;
set transaction isolation level read uncommitted;
select points from customers where customer_id =1;