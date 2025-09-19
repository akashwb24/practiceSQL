create table employees8(
employeeid int,
employeename varchar(100),
doj datetime,
salary float, 
city varchar (100) default 'london'
)

select * from employees8

insert into employees8
values (1, 'ram','2022-12-01', 250000, 'india')

insert into employees8
(employeeid,employeename,doj,salary)
values (22,'shubham','2021-02-11',255000,'kenya')

insert into employees8
values (11, 'vishnu','2000-01-01', 660000, 'bharat')

insert into employees8
(employeeid,employeename,doj,salary,city)
values (22,'shubham','2021-02-11',255000)