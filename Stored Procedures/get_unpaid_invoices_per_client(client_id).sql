CREATE DEFINER=`root`@`localhost` PROCEDURE `get_unpaid_invoices_per_client`(
client_id int
)
BEGIN
SELECT 
count(*) as counts,
sum(invoice_total) as total_sales
 FROM invoices i
 where i.client_id = client_id and payment_total =0;
END