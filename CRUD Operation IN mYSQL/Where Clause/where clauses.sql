SELECT * from customers where points > 3000;
SELECT * from customers where state != 'va';
select * from orders where order_date >= '2019-01-01';
SELECT * FROM sql_store.customers where birth_date >= '1990-01-01' and points >='1000';
SELECT * FROM sql_store.customers where birth_date >= '1990-01-01' or points >='1000';
SELECT * FROM sql_store.customers where NOT (birth_date >= '1990-01-01' or points >='1000');