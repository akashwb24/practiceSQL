select productid, invoicenum, orderdate, city, qty,
lag(qty, 1) over(order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
lag(qty, 2) over(order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
lag(qty, 2) over(partition by city order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
lead(qty, 1) over(order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
lead(qty, 2) over(order by orderdate)
from orders

select productid, invoicenum, orderdate, city, qty,
lead(qty, 2) over(partition by city order by orderdate)
from orders