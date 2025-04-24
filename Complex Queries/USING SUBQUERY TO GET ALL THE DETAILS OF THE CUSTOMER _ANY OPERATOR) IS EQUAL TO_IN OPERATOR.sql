select * from clients where client_id in (SELECT  client_id FROM invoices group by client_id having count(*) > 2)
select * from clients where client_id =ANY (SELECT  client_id FROM invoices group by client_id having count(*) > 2)
