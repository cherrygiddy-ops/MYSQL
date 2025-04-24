SELECT client_id,sum(invoice_total) as Total_sales,count(*) as Number_of_invoices_issued FROM invoices Group by client_id Having Total_sales >500 and Number_of_invoices_issued >5;
SELECT sum(invoice_total) as Total_Expenditure,c.name as client, c.state FROM invoices I inner join clients c using (client_id) where state = 'WV' group by client_id Having Total_Expenditure > 100
