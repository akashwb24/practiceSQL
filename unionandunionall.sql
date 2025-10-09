select * from tblEmps

select * into tblEmps2 from tblEmps

select * from tblEmps2

select * from tblEmps union select * from tblEmps2

select * from tblEmps union all select * from tblEmps2

select EmployeeId, EmployeeName, Title, Salary
from tblEmps
union
select EmployeeId, EmployeeName, Title, Salary
from tblEmps2

select EmployeeId, EmployeeName, NULL Title, Salary
from tblEmps
union all
select EmployeeId, EmployeeName, Title, Salary
from tblEmps2