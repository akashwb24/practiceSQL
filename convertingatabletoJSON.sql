select * into empnewj from employees

select * from empnewj

update empnewj set salary = null where employeeid = 2
update empnewj set salary = null where employeeid = 6
update empnewj set salary = null where employeeid = 10

select * from empnewj for json path

select * from empnewj for json path, include_null_values

select * from empnewj for json path,root('Employees'), include_null_values

select * from empnewj for json path, without_array_wrapper,include_null_values

select 1 as empid, 'Raj' as empname for json path

select 1 as empid, 'Raj' as empname for json auto
--auto requires a table for it to give json format

select * from empnewj for json auto



