declare @x int

set @x = 100

select @x

------------------------------

declare @a int
declare @y varchar(10)

set @a = 200
set @y = 'hello'

select @a
select @y

-------------------------------

declare @b int, @k varchar(10), @m money

select @b = 3, @k = 'world', @m = 6528
--we cannot assign values to multiple variables using SET,
-- but here SELECT plays a dual role putting values in the variables

select @b, @k, @m --fetch values

-------------------------------

declare @n int
set @n = 100
set @n = 200
select @n as num

------------------------------

declare @num int =100

set @num = 400

select @num num

----------------------------