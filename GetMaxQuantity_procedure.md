CREATE PROCEDURE GetMaxQuantity()
BEGIN 
    SELECT MAX(Quantity) FROM orderitems;
END;