select ProductKey, Sum(salesamount) TotalSales
from factinternetsales
group by productkey

select productkey, sum(salesamount) totalsales
from FactInternetSales
group by productkey
having sum(salesamount) >= 100000

select productkey, sum(salesamount) totalsales
from factinternetsales
where year(orderdate) = 2012
group by productkey
having sum(salesamount) >=100000