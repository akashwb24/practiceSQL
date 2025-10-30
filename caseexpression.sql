select ProductKey, EnglishProductName, Color,
case Color
when 'Red' then 'RED'
when 'Silver' then 'SILVER'
else 'NA'
end as Code
from DimProduct

select ProductKey, EnglishProductName, ListPrice,
case
when ListPrice >= 3000 then 'High'
when ListPrice >= 2000 then 'Avg'
else 'Low'
end as Category
from DimProduct

'''''''''''''''
