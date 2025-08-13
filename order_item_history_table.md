CREATE TABLE order_item_history (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    MenuItemID INT,
    OrderID INT,
    Quantity INT,
    action_time DATETIME
);

Create the order_item_history table and add the trigger