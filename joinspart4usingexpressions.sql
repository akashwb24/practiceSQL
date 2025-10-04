select 'P-' + format(ProductKey, '0000') as ProductId,
EnglishProductName into DimProducts from DimProduct

select * from DimProducts

select right(ProductId, 4) from DimProducts

select * from DimProducts DP join FactInternetSales FIS
on DP.ProductId = FIS.ProductKey

select p.ProductId, p.EnglishProductName, f.SalesAmount
from DimProducts p join FactInternetSales f
on right(p.ProductId,4) = f.ProductKey

select dps.ProductId, dps.EnglishProductName, fis.SalesAmount
from DimProducts dps join FactInternetSales fis
on cast(right(dps.ProductId, 4) as int) = fis.ProductKey


