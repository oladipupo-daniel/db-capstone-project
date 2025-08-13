ALTER TABLE bookings ADD COLUMN CustomerID INT;
ALTER TABLE bookings ADD CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID);

-- MySQL syntax to update with a random customer ID
UPDATE bookings 
SET CustomerID = (SELECT CustomerID FROM customers ORDER BY RAND() LIMIT 1)
WHERE BookingID > 0;