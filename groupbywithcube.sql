select year(orderdate) OrderYear,
sum(salesamount) TotalSales
from factinternetsales
group by year(orderdate)

select year(orderdate) OrderYear,
sum(salesamount) TotalSales
from factinternetsales
group by rollup(year(orderdate))

select year(orderdate) OrderYear,
sum(salesamount) TotalSales
from factinternetsales
group by cube (year(orderdate))

select isnull(format(orderdate,'yyyy') ,'grand total') OrderYear,
isnull(format(orderdate,'MM'),format(orderdate,'yyyy') + ' Total') MonthNm,
sum(salesamount) TotalSales
from factinternetsales
group by cube(format(orderdate,'yyyy'),format(orderdate,'MM'))