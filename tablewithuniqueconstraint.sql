use AdventureWorksDW

create table employees3(
employeeid int primary key,
employeename varchar(100),
doj datetime,
salary float,
email varchar(100) unique
)

select * from employees3

insert into employees3 (employeeid, employeename, doj, salary, email)
values(1,'jack','2000-12-28',45000,'jack@gmail.com')

insert into employees3 (employeeid, employeename, doj, salary, email)
values(2,'mack','2001-02-18',40000,'mack@gmail.com')

insert into employees3 (employeeid, employeename, doj, salary, email)
values(3,'prik','2002-07-25',35000,'prik@gmail.com')


insert into employees3 (employeeid, employeename, doj, salary, email)
values(4,'amit','2003-08-29',30000,null)