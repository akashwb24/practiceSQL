select * from FactInternetSales

select top 10 productkey, sum(salesamount) totalsales 
from factinternetsales
group by productkey
order by sum(salesamount)

select top 10 productkey, sum(salesamount) totalsales 
from factinternetsales
group by productkey
order by totalsales desc

select top 10 D.englishproductname, sum(F.salesamount) totalsales
from FactInternetSales F join DimProduct D
on F.ProductKey = D.ProductKey
group by D.EnglishProductName
order by totalsales
