SELECT ItemName FROM menuitems
WHERE MenuItemID = ANY(
    SELECT MenuItemID FROM orderitems WHERE Quantity > 2
);
