create table tblEmps(
EmployeeId int primary key,
ParentEmployeeId int,
EmployeeName varchar (100),
Title varchar (50),
Salary money
)

insert into tblEmps(EmployeeId,ParentEmployeeId,EmployeeName, Title,Salary)
values
(1,null,'John Smith','Founder',1000000),
(2,1,'Sam Cook','CEO',500000),
(3,2,'Amanda Johnson','Senior VP',100000),
(4,3,'Mike Henry','VP',40000),
(5,4,'Rakesh Dev','Manager',50000),
(6,5,'Rehan Shaikh','Architect',50000),
(7,5,'Amit Kumar','Lead Developer',40000),
(8,7,'Aman Patel','Associate',30000),
(9,7,'Joe Stone','Associate',20000),
(10,7,'Micahel Woods','Associate',10000)

select * from tblEmps

select * from tblEmps A join tblEmps B
on A.ParentEmployeeId = B.ParentEmployeeId

select A.EmployeeId, A.EmployeeName, A.ParentEmployeeId from tblEmps A join tblEmps B
on A.ParentEmployeeId = B.EmployeeId

select A.EmployeeId,A.EmployeeName,A.ParentEmployeeId,B.EmployeeName as ManagerName
from tblEmps A left join tblEmps B
on A.ParentEmployeeId = B.EmployeeId

select A.EmployeeId,A.EmployeeName,B.EmployeeName as ManagerName
from tblEmps A left join tblEmps B
on A.ParentEmployeeId = B.EmployeeId

select A.EmployeeId,A.EmployeeName,B.EmployeeName as ManagerName, A.Salary,B.Salary
from tblEmps A left join tblEmps B
on A.ParentEmployeeId = B.EmployeeId
where A.Salary > B.Salary