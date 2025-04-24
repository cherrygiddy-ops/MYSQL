CREATE DEFINER=`root`@`localhost` PROCEDURE `get_invoices_by_client`(client_id int)
BEGIN
select * from invoices i  where  i.client_id = client_id;
END