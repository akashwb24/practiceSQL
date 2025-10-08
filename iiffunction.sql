select ProductKey, EnglishProductName, Color
from DimProduct

select ProductKey, EnglishProductName,
iif(Color='Red', 'RD','NA') Code
from DimProduct

select ProductKey, EnglishProductName,
iif(Color='Red', 'RED',IIF(Color='Silver','SILVER',IIF(Color='Black','BLACK','NA'))) as Code
from DimProduct

select ProductKey, EnglishProductName, ListPrice,
iif(ListPrice>=3000 and ListPrice<=4500,'HIGH',
iif(ListPrice>=1500 and ListPrice<3000, 'MEDIUM',
iif(ListPrice>=0 and ListPrice<1500, 'LOW','NA'))) as ranges
from DimProduct


