select * from FactInternetSales

select max(SalesAmount) from FactInternetSales

select * from FactInternetSales
where SalesAmount = 3578.27 and SalesTerritoryKey = 6 and CurrencyKey=100

select * from FactInternetSales
where SalesAmount = max(SalesAmount)

select * from FactInternetSales
where SalesAmount = (Select max(SalesAmount) from FactInternetSales)

select * from FactInternetSales
where SalesAmount = (Select Min(SalesAmount) from FactInternetSales)

select * from FactInternetSales
where SalesAmount <= (select Avg(SalesAmount) from FactInternetSales)
