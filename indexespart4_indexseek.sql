create table customers
(
id int primary key identity(1,1),
firstname varchar(100),
lastname varchar (100)
)

insert into customers(firstname, lastname)
select firstname, lastname from DimCustomer

select * from customers
where firstname='John'

create index nci_firstname on customers(firstname)

select * from customers where firstname='john'

select * from customers where lastname='smith'

select * from customers where id=33

-------------------------------------------------

drop index nci_firstname on customers

create index nci_names on customers (firstname, lastname)

select * from customers where firstname='john'

select * from customers where lastname='smith'

select * from customers where firstname='john' and lastname='smith'

--index seek > index scan > table scan