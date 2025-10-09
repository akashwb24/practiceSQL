select * from tblEmps
intersect
select * from tblEmps2


select * from tblEmps
union
select * from tblEmps2

select * from tblEmps A join tblEmps2 B
on A.EmployeeId = B.EmployeeId
and A.ParentEmployeeId = B.ParentEmployeeId

