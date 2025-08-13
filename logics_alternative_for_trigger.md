DELIMITER //
CREATE PROCEDURE AddBooking(IN Booking_Date DATE)
BEGIN
    IF Booking_Date <= CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Booking date must be in the future';
    ELSE
        -- Insert booking logic here
    END IF;
END//
DELIMITER ;