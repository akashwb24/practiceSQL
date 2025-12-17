select year(getdate())
select month(getdate())
select day(getdate())

select Birthdate,year(Birthdate) from DimEmployee

select Birthdate, month(Birthdate) from DimEmployee

select Birthdate, day(Birthdate) from DimEmployee

select datepart(year, getdate())

  
select datepart(MONTH, getdate())

select datepart(weekday, getdate())

select datename(year, getdate())

select datename(mm, getdate())

select datename(weekday, getdate())

select format (getdate(), 'yy')
  

select format (getdate(), 'yyyy')

select format(getdate(), 'MM')

select format(getdate(), 'MMM')

select format(getdate(), 'dd')

select format(getdate(), 'ddd')

select format(getdate(),'dd-MM-yyyy hh:mm:ss')


select format(getdate(), 'dd-MM-yyyy HH:mm:ss')
