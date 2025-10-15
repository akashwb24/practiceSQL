select employeeid, empname, city, department, salary,
rank() over(order by salary) ranks
from employees

select employeeid, empname, city, department, salary,
rank() over(order by salary desc) ranks
from employees

select employeeid, empname, city, department, salary,
rank() over(partition by city order by salary desc) ranks
from employees

select employeeid, empname, city, department, salary,
rank() over(partition by department order by salary desc) ranks
from employees

select employeeid, empname, city, department, salary,
dense_rank() over(order by salary desc) ranks
from employees

select employeeid, empname, city, department, salary,
dense_rank() over(partition by department order by salary desc) ranks
from employees

select employeeid, empname, city, department, salary,
dense_rank() over(partition by city,department order by salary desc) ranks
from employees