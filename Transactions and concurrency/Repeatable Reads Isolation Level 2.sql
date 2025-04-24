use sql_store;
set transaction isolation level repeatable read ;
start transaction ;
update customers
set state = 'va' where customer_id =1;
commit;