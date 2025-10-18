create table products(
productkey int primary key,
productname varchar (100),
stocklevel int,
price money
)

select * from products

insert into products(productkey, productname, stocklevel, price)
output inserted.*
values
(1,'Adjustable race',1000,100.50),
(2,'bearing ball',800,90.85),
(3,'bb ball bearing',1250,120.45),
(4,'headset ball bearing',500,75.10)

delete from products
output deleted.*
where productkey>=3

-------------------------------------------------------

truncate table products -- then again insert values in the table

declare @tblproducts table(
productkey int not null,
productname varchar (100),
stocklevel int, 
price money
)

delete from products
output deleted.* into @tblproducts
where productkey>=3

select * from @tblproducts

------------------------------------------------

update products
set price=90
output inserted.productkey, deleted.price, inserted.price
where productkey=1

------------------------------------------------------------

create table products_stage(
productkey int primary key,
productname varchar(100),
stocklevel int,
price money
)

insert into products_stage(productkey, productname,stocklevel,price)
values
(1,'Adjustable race',1000,100.50),
(2,'bearing ball',800,90.85),
(11,'crown race',400,100.25),
(12,'chain stays',600,30.45)

merge into products t
using products_stage s
on t.productkey = s.productkey
when not matched then
insert (productkey, productname, stocklevel, price)
values(s.productkey,s.productname, s.stocklevel, s.price)
when matched then
update set t.stocklevel=s.stocklevel,
			t.price = s.price
when not matched by source then
delete
output s.productkey, s.productname, s.stocklevel,s.price, $action as operation;