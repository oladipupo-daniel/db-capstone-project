PREPARE GetOrderDetail FROM '
SELECT o.CustomerID AS CustomerID,
o.OrderID AS OrderID, 
SUM(oi.Quantity) AS TotalQuantity, 
o.Total_Cost AS Order_Cost
FROM orders o
INNER JOIN orderitems oi ON o.OrderID = oi.OrderID
WHERE CustomerID = ?
GROUP BY o.OrderID, o.Total_Cost';