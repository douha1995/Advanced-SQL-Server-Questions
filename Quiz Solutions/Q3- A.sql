USE BikeStore
GO

--------- solution for the question no #3 ------------------------
-- Create the table-valued function
CREATE FUNCTION GetStaffByStoreId
(
    @store_id INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT s.staff_id, s.first_name, s.last_name
    FROM sales.staffs s
    WHERE s.store_id = @store_id
);


