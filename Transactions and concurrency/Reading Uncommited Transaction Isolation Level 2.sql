use sql_store;
set transaction isolation level read uncommitted ;
start transaction ;
update customers
set points =30 where customer_id =1;

rollback;