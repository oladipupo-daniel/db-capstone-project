-- Move old bookings to archive
INSERT INTO bookings_archive SELECT * FROM bookings WHERE BookingDate < CURDATE() - INTERVAL 1 YEAR;
DELETE FROM bookings WHERE BookingDate < CURDATE() - INTERVAL 1 YEAR;