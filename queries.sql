
#Query 1: 

SELECT 
    b.booking_id,
    u.name AS customer_name,
    v.vehicle_name,
    b.start_date,
    b.end_date,
    b.booking_status
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id
INNER JOIN Vehicles v ON b.vehicle_id = v.vehicle_id;



#Query 2:

SELECT *
FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM Bookings b
    WHERE b.vehicle_id = v.vehicle_id
);


#Query 3:

SELECT *
FROM Vehicles
WHERE vehicle_type = 'car'
AND availability_status = 'available';




#Query 4:

SELECT 
    v.vehicle_name,
    COUNT(b.booking_id) AS total_bookings
FROM Vehicles v
INNER JOIN Bookings b ON v.vehicle_id = b.vehicle_id
GROUP BY v.vehicle_name
HAVING COUNT(b.booking_id) > 2;
