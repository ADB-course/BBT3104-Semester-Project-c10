-- Create a view to get customer purchase history
CREATE VIEW CustomerPurchaseHistory AS
SELECT
    c.Name AS CustomerName,
    p.ProductName AS ProductName,
    pu.Quantity AS QuantityPurchased,
    pu.TotalPrice AS TotalPrice,
    pu.PurchaseDate AS PurchaseDate
FROM
    Purchase pu
JOIN Customer c ON pu.CustomerID = c.CustomerID
JOIN Product p ON pu.ProductID = p.ProductID;
-- Write your SQL code here
