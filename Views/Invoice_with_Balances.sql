create  or replace view Invoice_with_Balances as 
SELECT 
invoice_id,
number,
client_id,
invoice_total,
payment_total,
invoice_total-payment_total as balances,
invoice_date,
due_date,
payment_date
 FROM invoices
 where invoice_total-payment_total >0