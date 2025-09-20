use AdventureWorksDW

select * from DimEmployee

select FirstName, MiddleName, LastName
from DimEmployee

select FirstName + ' '+ MiddleName+ ' ' + LastName
from DimEmployee

select FirstName+space(1)+(MiddleName)+space(1)+LastName
from DimEmployee

select FirstName+space(1)+isnull(MiddleName,'')+space(1)+LastName
from DimEmployee

select concat(FirstName,space(1), MiddleName, space(1), LastName)
from DimEmployee

select CONCAT_WS(space(1), FirstName, MiddleName, LastName) as Name
from DimEmployee

select CONCAT_WS('-', FirstName, MiddleName, LastName)
from DimEmployee

select FirstName, MiddleName, LastName,
concat_ws(space(1), FirstName, MiddleName,LastName) [Full Name]
from DimEmployee

select FirstName, MiddleName, LastName
into empDE
from DimEmployee

select * from empDE

alter table empDE
add [FullName] varchar(100)
alter table empDE
drop column [Full Name];

update empDE
set FullName = concat_ws(space(1), FirstName, MiddleName, LastName)


