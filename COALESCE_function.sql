create table vendors(
vendorid int primary key,
vendorname varchar(50),
yearly money,
halfyearly money,
quaterly money,
monthly money
)

insert into vendors(vendorid,vendorname,yearly,halfyearly,quaterly,monthly)
values(1,'xyz company',20000,null,null,null),
(2,'abc express',null,10000,null,null),
(3,'door step delivery',null,null,6000,null),
(4,'tcl telecom',null,null,null,1200)
  
select * from vendors

select coalesce (null, 100)
select coalesce (null, null) --error
select coalesce (null, 100, null, 234, 9845)

select vendorid, vendorname, coalesce(yearly, halfyearly, quaterly, monthly)
from vendors

select vendorid, vendorname, coalesce(yearly, halfyearly*2, quaterly*4, monthly*12)

from vendors


