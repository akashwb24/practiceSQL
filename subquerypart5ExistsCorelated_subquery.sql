select * from factinternetsales

select * from factinternetsales
where productkey in (select productkey from dimproduct where Color='Red')

select * from factinternetsales
where exists (select productkey from dimproduct where color='Red')

select * from factinternetsales
where not exists ( select productkey from dimproduct where color='Red')

select * from factinternetsales f
where exists (select productkey from dimproduct p
where f.productkey=p.productkey and color='Red')
