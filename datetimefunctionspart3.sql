select getdate()

select dateadd(year,1,getdate())

select dateadd(month, 1, getdate())

select dateadd(day, 1, getdate())

select dateadd(quarter, 1, getdate())

select datediff(year, datefromparts(2010,1,1), getdate())

select datediff(MM, datefromparts(2010,1,1), getdate())

select datediff (day, datefromparts(2010,1,1), getdate())


select eomonth(getdate(), 0)

select eomonth(getdate(), 1)

select eomonth(getdate(), -1)