select ProductKey, EnglishProductName, Color, ListPrice,
iif(Color='Red' and ListPrice>=3000, 'Red-3k',
iif(Color='Red' and ListPrice>=2000, 'Red-2k',
iif(Color='Red', 'Red<2k',
iif(Color='Silver' and ListPrice>=3000, 'Silver-3k',
iif(Color='Silver' and ListPrice>=2000, 'Silver-2k',
iif(Color='Silver', 'Silver<2k',
'na')))))) as Code
from DimProduct

select ProductKey, EnglishProductName, Color, ListPrice,
case
when Color='Red' and ListPrice>=3000 then 'Red-3k'
when Color='Red' and ListPrice>=2000 then 'Red-2k'
when Color='Red' then 'Red<2k'
when Color='Silver' and ListPrice>=3000 then 'Silver-3k'
when Color='Silver' and ListPrice>=2000 then 'Silver-2k'
when Color='Silver' then 'Silver<2k'
end as Category
from DimProduct