show charset;
alter database db_nme
character set  latin1;
alter table tb_name
character set latin1;
create table tbname
(
first_name varchar(50)  character set latin1 not null
)
-- mysql reserve 1 byte per character thats for internal language