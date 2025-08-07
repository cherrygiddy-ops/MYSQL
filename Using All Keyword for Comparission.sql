select * from invoices where invoice_total >all(
SELECT  ( invoice_total )FROM `sql_invoicing-r`.invoices where client_id =3)