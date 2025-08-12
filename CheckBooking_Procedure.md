DELIMITER //
CREATE PROCEDURE CheckBooking(IN Check_Date DATE, IN Check_TableNo INT)
BEGIN
DECLARE BookingStatus INT;
SELECT COUNT(*) INTO BookingStatus FROM bookings 
WHERE BookingDate = Check_Date AND TableNo = Check_TableNo;

IF BookingStatus > 0 THEN
SELECT 'Table is Booked' AS BookingStatus;
ELSE
SELECT 'Table is Available' AS BookingStatus;
END IF;
END//
DELIMITER ;

"""Example to call this procedure; Little Lemon need you to create a stored procedure called CheckBooking to check whether a table in the restaurant is already booked. """

CALL CheckBooking("2022-11-12", 3) 