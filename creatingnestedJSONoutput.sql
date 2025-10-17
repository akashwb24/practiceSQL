select top 10
p.productkey, p.englishproductname,p.listprice, f.salesamount
from dimproduct p join FactInternetSales f
on p.ProductKey = f.ProductKey
for json path

select top 10
p.productkey, 
p.englishproductname as "Detail.Productname", 
p.listprice as "Detail.Price",
p.StartDate as "Date.Start.StartDate",
f.salesamount
from dimproduct p join FactInternetSales f
on p.ProductKey = f.ProductKey
for json path