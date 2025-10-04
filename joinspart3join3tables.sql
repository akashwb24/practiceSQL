select * from DimProduct
select * from DimCustomer
select * from FactInternetSales

select DC.FirstName, DP.EnglishProductName, FIS.SalesAmount
from DimProduct DP join FactInternetSales FIS
on DP.ProductKey = FIS.ProductKey
join DimCustomer DC on FIS.CustomerKey = DC.CustomerKey

select DC.FirstName, DP.EnglishProductName, sum(FIS.SalesAmount)
from DimProduct DP join FactInternetSales FIS
on DP.ProductKey = FIS.ProductKey
join DimCustomer DC on FIS.CustomerKey = DC.CustomerKey
group by DC.FirstName, DP.EnglishProductName