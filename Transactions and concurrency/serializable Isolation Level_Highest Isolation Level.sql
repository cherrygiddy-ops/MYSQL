use sql_store;
set transaction isolation level serializable;
start transaction;
select * from customers where state ='va';
commit