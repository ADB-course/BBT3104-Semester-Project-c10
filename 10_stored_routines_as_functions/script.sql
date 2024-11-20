DELIMITER //

-- Function to calculate total sales for a product
CREATE FUNCTION TotalSales(p_ProductID INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(Price * Quantity) INTO total
    FROM Purchase
    WHERE ProductID = p_ProductID;
    RETURN IFNULL(total, 0);
END //

DELIMITER ;
-- Write your SQL code here
