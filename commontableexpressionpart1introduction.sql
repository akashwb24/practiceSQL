with cteselectsales
as
(
select productkey, year(orderdate) orderyear, salesamount
from factinternetsales
)
select productkey, orderyear, sum(salesamount) totalsales
from cteselectsales

  
group by productkey, orderyear
