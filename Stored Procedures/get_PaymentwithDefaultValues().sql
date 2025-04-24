CREATE PROCEDURE `get_Payment` (client_id int,payment_method tinyint)
BEGIN
select * from payments p
where  p.client_id =ifnull(client_id,payment_method,c.client_id);
END
