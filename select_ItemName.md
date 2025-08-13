SELECT ItemName FROM menuitems
WHERE MenuItemID = ANY(
    SELECT MenuItemID FROM orderitems WHERE Quantity > 2
);


This 📚 query 📚 finds 📚 menu 📚 items 📚 (ItemName) 📚 where 📚 there 📚 exists 📚 at 📚 least 📚 one 📚 order 📚 item 📚 with 📚 a 📚 quantity 📚 > 2 📚.