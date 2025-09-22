use AdventureWorksDW

select * from empDE

select FullName from empDE

select FullName,left(FullName,charindex(' ',FullName)-1)
from empDE

select trim(left(FullName, charindex(' ', FullName))) FirstName
from empDE

select FullName,
right(FullName,len(FullName)-charindex(' ',FullName,charindex(' ',FullName)+1)) LastName
from empDE


