SELECT * 
FROM orders
WHERE year(order_date) =  year(now())
