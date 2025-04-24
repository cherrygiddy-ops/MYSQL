use sql_invoicing;
Drop procedure if exists get_client_by_state;

DELIMITER $$
CREATE procedure get_client_by_state (state char(2))
begin
  select * from clients c where c.state = state;
  end $$
  
  DELIMITER ;