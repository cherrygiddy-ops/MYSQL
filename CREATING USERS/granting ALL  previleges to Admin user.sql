-- for the admin
select * from mysql.user;

grant  all on *.* to gg;

create user gg identified by  '1234';

select * from mysql.user;

set password for morris = '1234';