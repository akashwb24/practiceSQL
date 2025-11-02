create table products
(
productkey int primary key,
productname varchar (100),
stocklevel int,
price money
)

insert into products
(productkey, productname, stocklevel, price)
values
(1,'adjustable race', 1000,100.50),
(2,'bearing ball', 800,90.85),
(3,'bb ball bearing', 1250,120.45),
(4,'headset ball bearing', 500,75.10),
(5,'blade', 1500,10.25),
(6,'ll crankram', 200,2000.45),
(7,'ml crankram', 200,1980.50),
(8,'hl crankram', 200,1976.45),
(9,'chainring bolts', 2000,10.25),
(10,'chainring nut', 2000,3.45)

select * from products

drop table products_stage

create table products_stage(
productkey int primary key,
productname varchar (100),
stocklevel int,
price money
)

insert into products_stage(productkey, productname, stocklevel, price)
values(1,'adjustable race',1200, 100.50),
(2,'bearing ball',1200,95.85),
(11,'crown race',400,100.25),
(12,'chain stays',600,30.45)

select * from products
select * from products_stage

--scd1 implementation -- no history is preserved
merge into products t
	using products_stage s
	on t.productkey = s.productkey

when not matched then
	insert (productkey, productname, stocklevel, price)
	values(s.productkey, s.productname, s.stocklevel, s.price)

when matched then
	update set t.stocklevel = s.stocklevel,
		t.price = s.price;

--scd2 implementation -- preserve history by adding row

drop table products

create table products
(
productkey int, --here removing primary key, because we wont be able to add it otherwise
productname varchar (100),
stocklevel int,
price money,
startdate datetime,
enddate datetime,
isactive bit
)

insert into products
(productkey, productname, stocklevel, price,startdate, enddate,isactive)
values
(1,'adjustable race', 1000,100.50,'2020-04-03',null,1),
(2,'bearing ball', 800,90.85,'2021-01-02',null,1),
(3,'bb ball bearing', 1250,120.45,'2022-07-02',null,1),
(4,'headset ball bearing', 500,75.10,'2023-08-02',null,1)

drop table products_stage
create table products_stage(
productkey int,
productname varchar (100),
stocklevel int,
price money
)

insert into products_stage(productkey, productname, stocklevel, price)
values(1,'adjustable race',1200,100.50),
(5,'crown race',400,100.25),
(6,'chain stays',600,30.45)

insert into products
select productkey,productname,stocklevel,price,startdate,enddate,isactive
from(
	merge into products t
	using products_stage s
	on t.productkey = s.productkey

	when not matched then
	insert(productkey,productname,stocklevel,price,startdate,enddate,isactive)
	values(s.productkey,s.productname,s.stocklevel,s.price,
	format(getdate(),'yyy-MM-dd'),null,1)
	
	when matched and isactive = 1 then
	update set enddate = format(dateadd(DD,-1,getdate()),'yy-MM-dd'),
	isactive=0

	output s.productkey,s.productname, s.stocklevel,s.price,
	format(getdate(),'yyyy-MM-dd') startdate, null as enddate, 1 as inactive,
	$Action as operation) as mergeop

	where mergeop.operation = 'upadte';


--scd3 implementation --preserve history by adding column
--drop table if exists products
create table products(
productkey int,
productname varchar (100),
stocklevel int,
price money,
previousprice_1 money,
previousprice_1_enddate datetime,
previousprice_2 money,
previousprice_2_enddate datetime
)

insert into products(productkey,productname,stocklevel,price)values
(1,'adjustable race',1000,100.50),
(2,'bearing ball',800,90.85),
(3,'bb ball bearing',1250,120.45),
(4,'headset ball bearings',500,75.10)

merge into products t
using products_stage s
on t.productkey=s.productkey

when not matched then
insert(productkey,productname,stocklevel,price)
values(s.productkey,s.productname,s.stocklevel,s.price)

when matched and (t.stocklevel <> s.stocklevel or t.price<>s.price) then
update set t.stocklevel=s.stocklevel,
t.price=s.price,
t.previousprice_1=t.price,
t.previousprice_1_enddate = dateadd(dd,-1,format(getdate(),'yyyy-DD-mm')),
t.previousprice_2=t.previousprice_1,
t.previousprice_2_enddate = previousprice_1_enddate;