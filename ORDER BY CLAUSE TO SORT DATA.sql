SELECT * FROM sql_store.customers order by phone DESC;sorting records by the given column
SELECT * FROM sql_store.customers order by state,first_name DESC;
SELECT first_name,last_name FROM sql_store.customers order by state;
SELECT *, (quantity * unit_price) as Total_price FROM sql_store.order_items where order_id =2 order by Total_price desc;