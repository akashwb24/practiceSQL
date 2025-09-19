use AdventureWorksDW

create table employees6(
employeeid int primary key,
employeename varchar(100),
doj datetime,
salary float check(salary>=10000))

insert into employees6(employeeid, employeename, doj, salary)
values (1,'naama','2022-12-31',20000)

select * from employees6

insert into employees6(employeeid, employeename, doj, salary)
values (4,'naama','2022-12-31',7000)

insert into employees6(employeeid, employeename, doj, salary)
values (2,'raka','2022-12-31',10000)

insert into employees6(employeeid, employeename, doj, salary)
values (3,'amma','2022-12-31',12000)