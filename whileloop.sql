declare @x int = 0

while @x < 10 --run loop till condition is true
	begin
		set @x = @x + 1
		print (@x)
	end

------------------------------------------------------

declare @y int = 0

while @y < 10 --run loop till condition is true
	begin
		set @y = @y + 1
			if @y < 6
				print (@y)
	end

-----------------------------------------------

declare @z int = 0

while @z < 10 --run loop till condition is true
	begin
		set @z = @z + 1
			if @z < 6
				print (@z)
			else
				print('loop is running') --even after the condition is met, the loop would still be running
	end

-------------------------------------------------

declare @k int = 0

while @k < 10 --run loop till condition is true
	begin
		set @k = @k + 1
			if @k < 6
				print (@k)
			else
				break
	end

------------------------------------------------

DECLARE @Count INT = 1;

WHILE @Count <= 20
BEGIN
    IF @Count = 10
        BREAK;  -- exit the WHILE loop early

    IF (@Count % 2) = 0
    BEGIN
        SET @Count = @Count + 1;
        CONTINUE;  -- skip the rest of the loop body for even numbers
    END
    
    PRINT 'Odd count: ' + CAST(@Count AS VARCHAR);
    SET @Count = @Count + 1;
END
