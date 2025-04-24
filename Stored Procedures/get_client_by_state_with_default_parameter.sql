use sql_invoicing;
Drop procedure if exists get_client_by_state_with_default_parameter;

DELIMITER $$
CREATE procedure get_client_by_state_with_default_parameter (state char(2))
begin
  select * from clients c where c.state = ifnull(state,c.state);
  end $$
  
  DELIMITER ;