SELECT  
     c.state,
     c.city,
     sum(invoice_total) as Total_sales
from  invoices  join clients c using (client_id) group by (state,city)

