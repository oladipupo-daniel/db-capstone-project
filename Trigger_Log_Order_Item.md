CREATE TRIGGER log_order_item
AFTER INSERT ON orderitems
FOR EACH ROW
BEGIN
    INSERT INTO order_item_history (MenuItemID, OrderID, Quantity, action_time)
    VALUES (NEW.MenuItemID, NEW.OrderID, NEW.Quantity, NOW());
END;

Purpose: Log details of new orderitems into order_item_history.