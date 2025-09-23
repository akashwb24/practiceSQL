create table tblintdatatypes(
id1 tinyint, id2 smallint, id3 int, id4 bigint)

select * from tblintdatatypes

create table tblappnumtype1(
price numeric(38,4), cost decimal
)

insert into tblappnumtype1(price) values (20202.14)

select * from tblappnumtype1
