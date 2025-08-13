DELIMITER //
CREATE PROCEDURE CancelOrder(IN OrderIDtoCancel INT)
BEGIN
DELETE FROM orders WHERE OrderID = OrderIDtoCancel;
SELECT CONCAT('Order ', OrderIDtoCancel, 'is cancelled.') AS Message;
END//
DELIMITER ;