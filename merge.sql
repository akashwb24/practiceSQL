select * from employees

select * into employees_stage from employees

select * from employees_stage

delete from employees where employeeid>6

update employees_stage set salary = 34000
where employeeid = 9

update employees_stage set salary = 25000
where employeeid = 6

update employees_stage set city = 'NYC'
where employeeid = 5

select * from employees_stage
select * from employees

set identity_insert employees on
set identity_insert employees off
merge employees T
using employees_stage S
on T.employeeid = S.employeeid
when not matched then
insert(employeeid, empname, city, department, salary)
values(S.employeeid,S.empname,S.city,S.department,S.salary)
when matched then
update set T.city=S.city,T.department=S.department,T.salary=S.salary
when not matched by source then
delete;

