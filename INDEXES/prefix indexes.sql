create index idx_lastname on customers(last_name(20));

select count(distinct left(last_name,10) )from customers;