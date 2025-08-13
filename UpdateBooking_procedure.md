DELIMITER //
CREATE PROCEDURE UpdateBooking(IN Booking_ID INT, IN New_Booking_Date DATE)
BEGIN
    DECLARE BookingExists INT;
    SELECT COUNT(*) INTO BookingExists FROM bookings WHERE BookingID = Booking_ID;
    
    IF BookingExists > 0 THEN
        UPDATE bookings SET BookingDate = New_Booking_Date WHERE BookingID = Booking_ID;
        SELECT CONCAT('Booking ', Booking_ID, ' Updated') AS Confirmation;
    ELSE
        SELECT 'Booking Not Found' AS UpdateStatus;
    END IF;
END//
DELIMITER ;

CALL UpdateBooking(1, '2025-08-15');