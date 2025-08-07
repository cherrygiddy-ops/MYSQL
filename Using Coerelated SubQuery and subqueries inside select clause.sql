SELECT  client_id,
                 name,
                 (select sum(invoice_total)  from invoices 
                 where client_id=c.client_id
                 )
                 as Total_sales,
                 (select avg(invoice_total) from invoices) as average,
                 (select Total_sales - average) as Diffrences
 FROM `sql_invoicing-r`.clients c;