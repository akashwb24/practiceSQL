create view viewselectdata
as
select productkey, englishproductname, listprice
from Dimproduct

select * from viewselectdata

create view VwDailyProductSales
as
select D.EnglishProductName, F.OrderDate, SUM(F.SalesAmount) [Total Sales]
from FactInternetSales F join DimProduct D
on F.ProductKey = D.ProductKey
group by D.EnglishProductName, F.OrderDate

select * from VwDailyProductSales

alter view viewselectdata
as
select productkey, englishproductname, listprice, color
from Dimproduct

select * from viewselectdata

drop view viewselectdata