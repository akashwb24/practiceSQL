use AdventureWorksDW

create table SalesTran(
ProductId int,
InvoiceNum varchar(10),
Qty int,
Sales money
)
insert into SalesTran(ProductId, InvoiceNum, Qty, Sales)
values (1,'SOB982',10,3000),
(2,'SOB983',5,2500),
(3,'SOB984',5,376),
(1,'SOB985',7,2100),
(2,'SOB986',8,4000),
(4,'SOB987',10,838)

create table Products(
ProductId int,
ProductName varchar(50),
UnitPrice money
)
insert into Products(ProductId,ProductName,UnitPrice)
values(1,'ABC Logo Cap',300),
(2,'Ball Bearing',500),
(3,'Bell',72.5),
(4,'Trousers',83.8),
(5,'Shirt',200)

select * from SalesTran
select * from Products

select * from SalesTran, Products

select * from Products, SalesTran

select * from SalesTran join Products
on SalesTran.ProductId = Products.ProductId

select * from SalesTran as ST INNER JOIN Products as PT
on ST.ProductId = PT.ProductId


select PT.*,ST.* from SalesTran as ST INNER JOIN Products as PT
on ST.ProductId = PT.ProductId


select ST.* from SalesTran as ST INNER JOIN Products as PT
on ST.ProductId = PT.ProductId


select PT.* from SalesTran as ST INNER JOIN Products as PT
on ST.ProductId = PT.ProductId


select ST.ProductId, PT.ProductName, ST.InvoiceNum,ST.Qty,ST.Sales, PT.UnitPrice
from SalesTran as ST INNER JOIN Products as PT
on ST.ProductId = PT.ProductId

select * from SalesTran left join Products
on SalesTran.ProductId= Products.ProductId

select * from Products left join SalesTran
on SalesTran.ProductId= Products.ProductId

select * from SalesTran right join Products
on SalesTran.ProductId=Products.ProductId

select * from Products right join SalesTran
on SalesTran.ProductId=Products.ProductId


