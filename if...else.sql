declare @x int
set @x = 20
--select iif(@x=100,1,0)

if @x=10
	begin
		print (10)
		print ('its ten')
	end
else
	if @x=20
		begin
			print (20)
			print ('its twenty')
		end
	else
		print('no match')