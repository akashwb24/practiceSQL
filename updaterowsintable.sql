use AdventureWorksDW

select * from DimProduct

select * into dimproduct_bkup from DimProduct

select * from dimproduct_bkup

update dimproduct_bkup
set Color = 'No Color'
where Color = 'NA'

select distinct Color
from dimproduct_bkup

select Color
from dimproduct_bkup

update dimproduct_bkup
set Color = 'red-hi'
where Color='Red'

select Color
from dimproduct_bkup

update dimproduct_bkup
set Color='Black-dark'
where Color='Black' and ListPrice >= 1000

select Color, ListPrice
from dimproduct_bkup
where Color='Black-dark' and ListPrice>=1000

update dimproduct_bkup
set Color='White-Low', StandardCost=1000
where Color='White' and ListPrice<=1500

select color, standardcost,listprice
from dimproduct_bkup
where color='White-Low'