create table #employees
(
empid int,
empname varchar(50)
)

select * from #employees

create table ##product
(
proid int,
proname varchar(40)
)

select * from ##product

select * into #dimpro from DimProduct

select * from #dimpro