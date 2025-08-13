DELIMITER //
CREATE PROCEDURE AddValidBooking(IN Valid_Date DATE, IN Valid_TableNo INT)
BEGIN
DECLARE BookingStatus INT;
SELECT COUNT(*) INTO BookingStatus FROM bookings
WHERE BookingDate = Valid_Date AND TableNo = Valid_TableNo;

IF BookingStatus > 0
THEN ROLLBACK;
SELECT CONCAT(' Table ', Valid_TableNo, ' is already booked ', Valid_Date, ';', ' Booking is Cancelled ') AS BookingStatus;
ELSE
INSERT INTO bookings (BookingDate, TableNo) VALUES (Valid_Date, Valid_TableNo);
COMMIT;
SELECT CONCAT('Table ', Valid_TableNo, ' is available ', Valid_Date, ';', ' Proceed to Booking ') AS BookingStatus;
END IF;
END//
DELIMITER ;




CALL AddValidBooking('2022-10-13', 2);

"""you need to create a new procedure called AddValidBooking. This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.  

Use the following guidelines to complete this task:

The procedure should include two input parameters in the form of booking date and table number.

It also requires at least one variable and should begin with a START TRANSACTION statement.

Your INSERT statement must add a new booking record using the input parameter's values.

Use an IF ELSE statement to check if a table is already booked on the given date. 

If the table is already booked, then rollback the transaction. If the table is available, then commit the transaction. """