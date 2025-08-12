DELIMITER //
CREATE PROCEDURE AddBooking(IN Booking_ID INT, IN Booking_Date DATE, IN TableNumber INT)
BEGIN
    DECLARE BookingStatus INT;
    SELECT COUNT(*) INTO BookingStatus FROM bookings 
    WHERE BookingID = Booking_ID AND BookingDate = Booking_Date AND TableNo = TableNumber;
    
    IF BookingStatus > 0 THEN 
        SELECT 'Table is already booked' AS BookingStatus;
    ELSE
        INSERT INTO bookings (BookingID, BookingDate, TableNo) 
        VALUES (Booking_ID, Booking_Date, TableNumber);
        SELECT CONCAT('You have booked table ', TableNumber, ' on ', Booking_Date) AS BookingConfirmation;
    END IF;
END//
DELIMITER ;

CALL AddBooking(16, 1, '2022-10-13', 2);

--set employee ID to Null to make this procedure work perfectly when inserting new records

ALTER TABLE bookings MODIFY EmployeeID INT NULL;
-- then call new records
CALL AddBooking(17, 1, '2025-08-15', 10);