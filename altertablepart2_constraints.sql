create table empnew(
empid int, 
empname varchar(50)
)

  
alter table empnew
alter column empid int not null

alter table empnew
add constraint pk_new primary key(empid)

create table salaries(
empid int,
salary money
)

alter table salaries
add constraint fk_new foreign key(empid)

references empnew(empid)
