select * from employees

select * from(
select city, department, salary from employees) T
PIVOT(sum(salary) for department IN(IT,Sales)) P
