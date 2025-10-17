with ctesales
as
(
select productkey, sum(salesamount) totalsales
from FactInternetSales
group by productkey
),
cteproduct
as
(
select productkey, englishproductname
from dimproduct
)
select p.ProductKey,p.EnglishProductName,s.totalsales
from ctesales s join cteproduct p
on s.ProductKey = p.ProductKey