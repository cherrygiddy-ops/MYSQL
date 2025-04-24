SELECT LAST_NAME,FIRST_NAME,POINTS,(POINTS +10) *100 AS DISCOUNT_FACTOR FROM CUSTOMERS;
SELECT distinct state FROM sql_store.customers;
SELECT name,unit_price ,(unit_price *1.1) as 'new price' from products;