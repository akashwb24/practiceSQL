select * from DimEmployee
select * from DimSalesTerritory

select * into DimEmp from DimEmployee

select BaseRate from DimEmp where SalesTerritoryKey = 6

update DimEmp set BaseRate = BaseRate*1.1
from DimEmp D join DimSalesTerritory T
on D.SalesTerritoryKey = T.SalesTerritoryKey
where T.SalesTerritoryCountry = 'Canada'

update DimEmp set BaseRate=BaseRate*1.1
where SalesTerritoryKey in
(select SalesTerritoryKey from DimSalesTerritory 
where SalesTerritoryCountry = 'Canada')