
SELECT c.state,c.city, sum(invoice_total) as Total_sales FROM invoices I join clients c using (client_id) group by state,city with rollup;

SELECT pm.name as Payment_method,sum(amount) AS Total_payment FROM payments p JOIN payment_methods pm on p.payment_method =pm.payment_method_id group by pm.name with rollup