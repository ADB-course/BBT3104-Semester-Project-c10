-- Trigger to update stock in Product table
CREATE TRIGGER update_stock_after_purchase
AFTER INSERT ON Purchase
FOR EACH ROW
BEGIN
    UPDATE Product
    SET Stock = Stock - NEW.Quantity
    WHERE ProductID = NEW.ProductID;
END;
-- Write your SQL code here
