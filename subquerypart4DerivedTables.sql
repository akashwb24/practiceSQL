select * from factinternetsales

select avg(TotalTransactions) from(
select CustomerKey, Count(*) TotalTransactions from factinternetsales
group by Customerkey) as T