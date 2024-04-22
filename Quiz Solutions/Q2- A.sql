USE BikeStore
GO

--------- solution for the question no #2 ------------------------
-- Create the trigger
CREATE TRIGGER SetShippedDateOnCompletedOrder
ON sales.orders
AFTER UPDATE
AS
BEGIN
    -- Check if the order_status column was updated to 4 (Completed)
    IF UPDATE(order_status)
    BEGIN
        -- Update the shipped_date for orders marked as Completed
        UPDATE o
        SET shipped_date = CASE WHEN i.order_status = 4 THEN GETDATE() ELSE NULL END
        FROM sales.orders o
        JOIN inserted i ON o.order_id = i.order_id
        WHERE i.order_status = 4;
    END
END;

