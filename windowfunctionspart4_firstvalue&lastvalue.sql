select productid, invoicenum, orderdate, city, qty,
first_value(qty) over(order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
first_value(qty) over(partition by city order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
last_value(qty) over(order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
last_value(qty) over(partition by city order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
last_value(qty) over(partition by city order by (select 0))
from orders

select productid, invoicenum, orderdate, city, qty,
LAST_VALUE(qty) 
OVER (
  PARTITION BY city
  ORDER BY order_column desc
  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
)
