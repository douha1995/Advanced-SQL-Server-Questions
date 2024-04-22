use BikeStore
go

--------- solution for the question no #1 ------------------------

CREATE PROCEDURE CalculateTotalRevenue
    @store_id INT
AS
BEGIN
    -- Declare variable to store total revenue
    DECLARE @total_revenue DECIMAL(10, 2);

    -- Calculate total revenue
    SELECT @total_revenue = SUM(oi.quantity * oi.list_price * (1 - oi.discount / 100))
    FROM sales.orders o
    JOIN sales.order_items oi ON o.order_id = oi.order_id
    WHERE o.store_id = @store_id;

    -- Return total revenue
    SELECT @total_revenue AS TotalRevenue;
END;

exec CalculateTotalRevenue @store_id = 2;