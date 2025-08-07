SELECT 
customer_id,first_name,points,'Gold' as type
 FROM `sql_store-r`.customers where points >3000
union
 SELECT 
customer_id,first_name,points,'bronze' as type
 FROM `sql_store-r`.customers where points >2000
 union
 SELECT 
customer_id,first_name,points,'bronze' as type
 FROM `sql_store-r`.customers where points <2000
 order by first_name
 