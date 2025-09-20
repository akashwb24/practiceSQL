use AdventureWorksDW

select * INTO dimprobkk from DimProduct

select * from dimprobkk

select replace ('hello','e','x')
select EnglishProductName from dimprobkk
select replace (EnglishProductName, 'e','x') from dimprobkk

select replace('hello','e', 'xy')

select replace ('mama','ma','naa')

select stuff('hello',2,1,'d')

select stuff('hello',3,2,'d')

select reverse('hello')

select reverse(EnglishProductName) as revEPN from dimprobkk