
select upper('hello')
select lower('WORLD')

select upper(EnglishProductName) from DimProduct

select EnglishProductName, Upper(EnglishProductName) uEPN
from DimProduct

select EnglishProductName, Lower(EnglishProductName) Lepn
from DimProduct

select lower(left(EnglishProductName, 3)) L_EPN, EnglishProductName
from DimProduct

select upper(right(EnglishProductName,4)) R_EPN,EnglishProductName
from DimProduct

select upper(substring(EnglishProductName, 2, 3)), EnglishProductName
from DimProduct

select substring('hello',2,3)

select len(EnglishProductName) from DimProduct

select len('Hello my ')
 
select trim('    hihi    ')  --hihi

select trim(EnglishProductName), EnglishProductName
from DimProduct

select ltrim(EnglishProductName) LtrimEPN, EnglishProductName
from DimProduct

select rtrim(EnglishProductName) RtrimEPN, EnglishProductName
from DimProduct

select * from DimProduct

select substring(ProductAlternateKey,4,4) SSpak, ProductAlternateKey
from DimProduct

SELECT TRIM('#$' FROM '#$$$#Data$##$') AS TrimmedString;
-- Result: 'Data'


select datalength(EnglishProductName), len(EnglishProductName) from DimProduct