select top 100 * from Dimproduct

select top 10 productkey, EnglishProductName, listprice 
from Dimproduct

select * from(
select top 10 * from dimproduct
order by productkey desc
) T
order by productkey

select top 10 percent *from dimproduct

