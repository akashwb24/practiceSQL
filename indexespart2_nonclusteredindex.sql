create table emp4(
empid int primary key,
empname varchar(100),
city varchar(50),
dept varchar(30),
salary money,
email varchar(100)
)
insert into emp4(empid,empname,city,dept,salary,email)
values(1,'john','nyc','it',40000,'abc@gmail.com'),
(2,'amanda','london','sales',40000,'abc1@mail.com'),
(3,'aman','pune','it',30000,'a2bc@ymail.com'),
(4,'rahul','pune','it',26000,'ab3c@wemail.com'),
(5,'sam','london','sales',30000,null)

select * from emp4

create nonclustered index nci_emp4 on emp4(empname)
--max 999 non clustered index can be made in a table

create index nci_emp4_deptcity on emp4(dept,city)

drop index nci_emp4_deptcity on emp4

alter index nci_emp4 on emp4 disable

create nonclustered index nci_empname2
on emp4(empname)
include(dept,city)

create unique nonclustered index nci_email on emp4(email)