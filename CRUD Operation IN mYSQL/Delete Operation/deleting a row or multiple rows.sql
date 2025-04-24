delete from invoices where client_id = (SELECT  client_id FROM clients  where name ='vinte')
