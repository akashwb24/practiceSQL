select * from employees

  
select * into pivotdata from (select city, department, salary 
from employees) t
pivot(sum(salary) for department in (IT, SALES)) p

  
select * from pivotdata

  
select * from (select city, it, sales from pivotdata) t
unpivot (salary for department in (it, sales)) u

  
select city, department,salary from (select city, it, sales from pivotdata) t

  
unpivot (salary for department in (it, sales)) u
