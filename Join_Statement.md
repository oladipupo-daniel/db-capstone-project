SELECT 
c.CustomerID AS CustomerID, 
c.CustomerName AS `Customer Names`, 
o.OrderID AS OrderID, 
o.Total_Cost AS Cost,
m.ItemName, 
m.Category 
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN orderitems oi ON o.OrderID = oi.OrderID
INNER JOIN menuitems m ON oi.MenuItemID = m.MenuItemID
WHERE o.Total_Cost > 150
ORDER BY o.Total_Cost ASC;