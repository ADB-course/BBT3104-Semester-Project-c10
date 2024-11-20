-- Example transaction to place a purchase
START TRANSACTION;

-- Deduct stock
UPDATE Product
SET Stock = Stock - 2
WHERE ProductID = 1;

-- Insert into Purchase table
INSERT INTO Purchase (CustomerID, ProductID, Quantity, TotalPrice, PurchaseDate)
VALUES (1, 1, 2, 39.98, CURRENT_TIMESTAMP);

-- Commit transaction
COMMIT;
-- Write your SQL code here
