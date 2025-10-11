create table SalesTran2(
ProductId int foreign key references Products2(ProductId),
InvoiceNum varchar(10),
Qty int,
Sales money
)
insert into SalesTran2(ProductId, InvoiceNum, Qty, Sales)
values (1,'SOB982',10,3000),
(2,'SOB983',5,2500),
(3,'SOB984',5,376),
(1,'SOB985',7,2100),
(2,'SOB986',8,4000),
(4,'SOB987',10,838)

create table Products2(
ProductId int primary key,
ProductName varchar(50),
UnitPrice money
)
insert into Products2(ProductId,ProductName,UnitPrice)
values(1,'ABC Logo Cap',300),
(2,'Ball Bearing',500),
(3,'Bell',72.5),
(4,'Trousers',83.8),
(5,'Shirt',200)


SELECT * FROM Products2

select * from SalesTran2

select * from SalesTran2 left join Products2
on SalesTran2.ProductId = Products2.ProductId

insert into SalesTran2(ProductId, InvoiceNum, Qty, Sales)
values (6,'SOB2929',10,2000)