DELIMITER //
CREATE PROCEDURE CancelBooking(IN Booking_Id INT)
BEGIN
DELETE FROM bookings WHERE BookingID = Booking_Id;
SELECT CONCAT('Booking ', Booking_Id, ' cancelled') AS Confirmation;
END//
DELIMITER ;