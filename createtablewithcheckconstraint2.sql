
create table employees7(
employeeid int,
employeename varchar(100),
doj datetime,
salary float check(salary>=10000),
gender char(1) check (gender in ('m','f','o'))
)

insert into employees7(employeeid, employeename, doj, salary,gender)
values (1,'naama','2022-12-31',20000,'m')

select * from employees7


insert into employees7(employeeid, employeename, doj, salary,gender)
values (3,'raka','2002-2-3',25000,'o')