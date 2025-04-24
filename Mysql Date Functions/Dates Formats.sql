SELECT date_format(order_date ,'%M %d %Y') AS Date,order_id FROM sql_store.orders;
SELECT  time_format(NOW(),'%H:%I %p')