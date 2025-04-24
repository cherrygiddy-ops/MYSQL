use sql_store;
set transaction isolation level serializable ;
start transaction ;
update customers
set state = 'va' where customer_id =3;
commit;