create table emp1(
empid int,
empname varchar (100),
city varchar(30),
dept varchar(10),
salary money
)

insert into emp1(empid,empname,city,dept,salary)
values(1,'john','nyc','it',40000),
(2,'amanda','london','sales',40000),
(3,'aman','pune','it',30000),
(4,'rahul','pune','it',26000),
(5,'sam','london','sales',30000)

select* from emp1

select * from emp1 where dept='it'

insert into emp1(empid,empname,city,dept,salary)
values(7,'suraj','pune','sales',12000),
(8,'ajay','delhi','sales',10000),
(9,'ankita','delhi','sales',10000),
(10,'sudeep','delhi','it',36000),
(11,'sanket','pune','it',40000)

insert into emp1(empid,empname,city,dept,salary)
values(6,'rakesh','delhi','it',20000)


create table emp2(
empid int primary key,
empname varchar(100),
city varchar(50),
dept varchar(30),
salary money
)
insert into emp2(empid,empname,city,dept,salary)
values(1,'john','nyc','it',40000),
(2,'amanda','london','sales',40000),
(3,'aman','pune','it',30000),
(4,'rahul','pune','it',26000),
(5,'sam','london','sales',30000)

select * from emp2

select * from emp2 where dept='it'

insert into emp2(empid,empname,city,dept,salary)
values(7,'suraj','pune','sales',12000),
(8,'ajay','delhi','sales',10000),
(9,'ankita','delhi','sales',10000),
(10,'sudeep','delhi','it',36000),
(11,'sanket','pune','it',40000)

insert into emp2(empid,empname,city,dept,salary)
values(6,'rakesh','delhi','it',20000)


create table emp3(
empid int,
empname varchar(100),
city varchar(50),
dept varchar(30),
salary money
)
insert into emp3(empid,empname,city,dept,salary)
values(1,'john','nyc','it',40000),
(2,'amanda','london','sales',40000),
(3,'aman','pune','it',30000),
(4,'rahul','pune','it',26000),
(5,'sam','london','sales',30000)

select * from emp3

create clustered index ci_emp3 on emp3(empid)

insert into emp3(empid,empname,city,dept,salary)
values(7,'suraj','pune','sales',12000),
(8,'ajay','delhi','sales',10000),
(9,'ankita','delhi','sales',10000),
(10,'sudeep','delhi','it',36000),
(11,'sanket','pune','it',40000)

insert into emp3(empid,empname,city,dept,salary)
values(6,'rakesh','delhi','it',20000)

drop index ci_emp3 on emp3

alter index ci_emp3 on emp3 disable

alter index ci_emp3 on emp3 rebuild