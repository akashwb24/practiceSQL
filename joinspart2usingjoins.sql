select * from DimProduct
select * from FactInternetSales

select dp.ProductKey,dp.EnglishProductName, fis.SalesAmount from DimProduct dp inner join FactInternetSales fis
on dp.ProductKey=fis.ProductKey

select dp.ProductKey, dp.EnglishProductName, fis.SalesAmount from DimProduct dp left join FactInternetSales fis
on dp.ProductKey=fis.ProductKey
where fis.SalesAmount is null

select dp.ProductKey, dp.EnglishProductName, dp.EnglishDescription, dp.ListPrice, dp.Size, dp.Weight, fis.SalesAmount, fis.UnitPrice
from DimProduct dp right join FactInternetSales fis
on dp.ProductKey=fis.ProductKey

select dp.EnglishProductName, sum(fis.SalesAmount) from DimProduct dp inner join FactInternetSales fis
on dp.ProductKey=fis.ProductKey
group by dp.EnglishProductName

select dp.EnglishProductName, fis.SalesAmount from DimProduct dp inner join FactInternetSales fis
on dp.ProductKey=fis.ProductKey