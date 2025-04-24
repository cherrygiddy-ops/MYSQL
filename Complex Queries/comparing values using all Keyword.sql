SELECT * FROM sql_invoicing.invoices where invoice_total >ALL(SELECT (invoice_total)from invoices where client_id =3)
