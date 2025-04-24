use sql_invoicing;
DROP PROCEDURE IF EXISTS get_client;
DELIMITER $$
CREATE PROCEDURE  get_client()
Begin
 select * from clients;
 end $$
 
 DELIMITER ;