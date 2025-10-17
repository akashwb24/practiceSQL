with ctenumbers(n)
as
(
select 1 as nums
union all
select n+1 from ctenumbers
where n<10
)
select * from ctenumbers

with ctenumbers(n)
as
(
select 2 as nums
union all
select n+2 from ctenumbers
where n<20
)
select * from ctenumbers

with ctenumbers(n)
as
(
select 3 as nums
union all
select n+2 from ctenumbers
--where n<20
)
select * from ctenumbers
option(maxrecursion 0) --will run infinetely

with ctenumbers(n)
as
(
select 2 as nums
union all
select n+2 from ctenumbers
--where n<20
)
select * from ctenumbers
option(maxrecursion 1)

with ctenumbers(n)
as
(
select 2 as nums
union all
select n+2 from ctenumbers
--where n<20
)
select * from ctenumbers
option(maxrecursion 32767)