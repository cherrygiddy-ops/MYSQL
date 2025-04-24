use sql_store;
set transaction isolation level repeatable read;
start transaction;
select * from customers where state ='va';
commit