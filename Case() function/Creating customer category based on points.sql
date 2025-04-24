SELECT 
customer_id,
concat(first_name,' ',last_name) as Fullname,
points,
case  
    when points >3000 then 'Gold'
    when points between 2000 and 3000 then 'silver'
    else 'brownse'
    
end as Category
FROM customers
order  by points desc;