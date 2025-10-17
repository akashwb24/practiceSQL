create procedure sp_selectdata
as
select * from DimProduct

execute sp_selectdata
---------------------------------
create proc sp_selectdata2
as
select * from DimProduct

exec sp_selectdata2
------------------------------------
create procedure sp_selectproduct(@color varchar(30))
as
select * from DimProduct where Color= @color

execute sp_selectproduct 'silver'
exec sp_selectproduct 'Red'
----------------------------------------------------------
create procedure sp_selectproduct2(@color varchar(30), @price money)
as
select * from DimProduct where Color= @color and ListPrice>@price

exec sp_selectproduct2 'Silver',500
exec sp_selectproduct2 'Red',1000
---------------------------------------------------------
create procedure sp_selectproduct3(@color varchar(30)='Red')
as
select * from DimProduct where Color= @color

exec sp_selectproduct3
exec sp_selectproduct3 'Silver'
-------------------------------------------------------------
alter procedure sp_selectdata2
as
select productkey, englishproductname,listprice
from DimProduct

exec sp_selectdata2

drop procedure sp_selectdata2
-----------------------------------------------------


