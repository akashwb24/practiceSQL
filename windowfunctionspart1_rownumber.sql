create table employees(
employeeid int primary key identity(1,1),
empname varchar(100),
city varchar(30),
department varchar(50),
salary money
)

insert into employees(empname, city, department, salary)
values('John','NYC','IT',40000),
('Amanda','London','Sales',40000),
('Aman','Pune','IT',30000),
('Rahul','Pune','IT',26000),
('Sam','London','Sales',30000),
('Rakesh','Delhi','IT',20000),
('Ajay','Delhi','Sales',10000),
('Ankita','Delhi','Sales',10000),
('Sudeep','Delhi','IT',36000),
('Sanket','Pune','IT',40000),
('Suraj','Pune','Sales',12000)

select * from employees

select empname, city, department, salary,
row_number() over(order by empname) Id
from employees

select empname, city, department, salary,
100 + row_number() over(order by empname) Id
from employees

select empname, city, department, salary,
row_number() over(partition by city order by empname) Id
from employees

select empname, city, department, salary,
row_number() over(partition by department order by empname) Id
from employees

select empname, city, department, salary,
row_number() over(partition by city,department order by empname) Id
from employees