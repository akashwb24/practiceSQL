select * from FactInternetSales

select F.* from FactInternetSales F join DimProduct D
on F.ProductKey = D.ProductKey
where Color='Red'

select * from FactInternetSales
where ProductKey in
(select ProductKey from DimProduct where Color= 'Red')

select * from FactInternetSales
where ProductKey not in 
( select ProductKey from DimProduct where Color='Red')








