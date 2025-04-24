-- web/desktop application
create user chakaranda_pos_system identified by 'kimz@cherry';

grant select,insert,update,delete,execute on sql_store.*
TO  chakaranda_pos_system