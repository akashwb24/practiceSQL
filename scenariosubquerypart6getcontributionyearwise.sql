select orderdate, salesamount from factinternetsales

select sum(salesamount) from factinternetsales

select year(orderdate) OrderYear, sum(salesamount)
from factinternetsales
group by year(orderdate)

select year(orderdate)OrderYear,sum(salesamount)TotalSales,
(select sum(salesamount) from FactInternetSales)
from factinternetsales
group by year(orderdate)

select year(orderdate)OrderYear,sum(salesamount)TotalSales,
sum(salesamount)/(select sum(salesamount) from FactInternetSales)
from factinternetsales
group by year(orderdate)

select year(orderdate)OrderYear,sum(salesamount)TotalSales,
format(sum(salesamount)/(select sum(salesamount) from FactInternetSales),'p')
from factinternetsales
group by year(orderdate)
order by year(orderdate)



