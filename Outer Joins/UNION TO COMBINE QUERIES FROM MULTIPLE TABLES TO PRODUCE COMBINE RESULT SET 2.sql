
SELECT  customer_id,first_name ,points ,'Brownse' as type from customers where points <=2000
UNION
SELECT  customer_id,first_name ,points ,'Silver' as type from customers where points between 2000 and 3000
UNION
SELECT  customer_id,first_name ,points ,'Gold' as type from customers where points  >2000 order by first_name;
