select * from SalesTran
select * from Products

select * from Products p left join SalesTran s
on p.ProductId = s.ProductId
select * from Products p left outer join SalesTran s
on p.ProductId = s.ProductId

select * from SalesTran s right outer join Products p
on s.ProductId = p.ProductId
select * from SalesTran s right join Products p
on s.ProductId = p.ProductId

insert into SalesTran values(6,'SOB988',1,900)

select * from SalesTran s full outer join Products p
on p.ProductId=s.ProductId