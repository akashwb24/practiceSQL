select * from factinternetsales

select year(orderdate) OrderYear, sum(salesamount) TotalSales
from factinternetsales
group by year(orderdate)

select year(orderdate) OrderYear, sum(salesamount) TotalSales
from factinternetsales
group by rollup(year(orderdate))--sorting happens automatically

select isnull(format(orderdate,'yyyy') ,'grand total') OrderYear,
sum(salesamount) TotalSales
from factinternetsales
group by rollup(format(orderdate,'yyyy'))

select isnull(format(orderdate,'yyyy') ,'grand total') OrderYear,
format(orderdate, 'MMM') MonthNm,
sum(salesamount) TotalSales
from factinternetsales
group by rollup(format(orderdate,'yyyy'),format(orderdate, 'MMM'))

select isnull(format(orderdate,'yyyy') ,'grand total') OrderYear,
month(orderdate) MonthNm,
sum(salesamount) TotalSales
from factinternetsales
group by rollup(format(orderdate,'yyyy'),month(orderdate))

select isnull(format(orderdate,'yyyy') ,'grand total') OrderYear,
isnull(format(orderdate,'MM'),format(orderdate,'yyyy') + ' Total') MonthNm,
sum(salesamount) TotalSales
from factinternetsales
group by rollup(format(orderdate,'yyyy'),format(orderdate,'MM'))