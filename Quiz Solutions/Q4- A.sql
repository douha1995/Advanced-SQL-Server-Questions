USE BikeStore
GO


--------- solution for the question no #4 ------------------------
-- Declare variables
DECLARE @staff_id INT;
DECLARE @email VARCHAR(255);

-- Declare the cursor
DECLARE staff_cursor CURSOR FOR
SELECT staff_id, email
FROM sales.staffs;

-- Open the cursor
OPEN staff_cursor;

-- Fetch the first row
FETCH NEXT FROM staff_cursor INTO @staff_id, @email;

-- Start a loop
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Display the staff_id and email
    PRINT 'Staff ID: ' + CAST(@staff_id AS VARCHAR(10)) + ', Email: ' + @email;

    -- Fetch the next row
    FETCH NEXT FROM staff_cursor INTO @staff_id, @email;
END

-- Close and deallocate the cursor
CLOSE staff_cursor;
DEALLOCATE staff_cursor;
