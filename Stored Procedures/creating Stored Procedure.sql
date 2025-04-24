DELIMITER $$
CREATE PROCEDURE  get_client()
Begin
 select * from clients;
 end $$
 
 DELIMITER ;