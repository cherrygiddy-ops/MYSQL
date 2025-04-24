SELECT 
order_id,
order_date,
case  
         when year(order_date) = year(now())-6 then 'Active'
         when year(order_date) = year(now()) -7 then 'Last Year'
         when year(order_date)  < year(now()) -7 then 'archived'
         else 'future'
end as Category
 FROM orders
 