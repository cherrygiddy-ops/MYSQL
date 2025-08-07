SELECT 
concat(first_name ,' ', last_name) as customer,
points,
case
    when points > 3000 then 'Gold'
      when points >=2000 then 'Silver'
    else 'Bronze' 
    end as Category
 FROM `sql_store-r`.customers
 order by points desc