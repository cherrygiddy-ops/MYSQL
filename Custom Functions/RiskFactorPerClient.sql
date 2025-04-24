SELECT 
client_id,
name,
get_risk_factor_for_client(client_id) as Risk_Factor
 FROM sql_invoicing.clients;