select newid()

create table tblemp(
empid uniqueidentifier,
empname varchar(100)
)

insert into tblemp(empid, empname)
values(newid(), 'akash')
insert into tblemp(empid, empname)
values(newid(), 'amit')

select * from tblemp

create table emptbl(empid uniqueidentifier default newid(), 
empname varchar(100))

insert into emptbl(empname) values ('bikash')
insert into emptbl(empname) values('tinku')

select * from emptbl