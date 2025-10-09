select EmployeeKey, FirstName, DepartmentName from DimEmployee
order by DepartmentName

select EmployeeKey, FirstName, DepartmentName from DimEmployee
order by DepartmentName desc

select EmployeeKey, FirstName, DepartmentName from DimEmployee
order by case DepartmentName
when 'Sales' then 1
when 'Finance' then 2
when 'Engineering' then 3
when 'Marketing' then 4
else 5
end

select EmployeeKey, FirstName, DepartmentName, 
case DepartmentName
when 'Sales' then 1
when 'Finance' then 2
when 'Production' then 3
when 'Engineering' then 4
end
from DimEmployee
