select  c.first_name as customer,p.name as products from customers c cross join products p order by c.first_name;

