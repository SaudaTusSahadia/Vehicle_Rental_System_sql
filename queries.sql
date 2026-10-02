-- query 1 (innner join)

SELECT
    b.id AS booking_id,
    u.name AS customer_name,
    v.vehicle_name,
    b.start_date,
    b.end_date,
    b.booking_status AS status
FROM bookings b
INNER JOIN users u
    ON b.user_id = u.id
INNER JOIN vehicles v
    ON b.vehicle_id = v.id;


-- query 2 (not exists)

SELECT
    v.id,
    v.vehicle_name,
    v.vehicle_type,
    v.model,
    v.registration_number,
    v.rental_price_per_day,
    v.availability_status
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.id
);


-- query 3 ( where )

SELECT
    id,
    vehicle_name,
    vehicle_type,
    model,
    registration_number,
    rental_price_per_day,
    availability_status
FROM vehicles
WHERE vehicle_type = 'car'
  AND availability_status = 'available';


-- query 4 (GROUP BY, HAVING, COUNT)

SELECT
    v.vehicle_name,
    COUNT(b.id) AS total_bookings
FROM vehicles v
INNER JOIN bookings b
    ON v.id = b.vehicle_id
GROUP BY v.id, v.vehicle_name
HAVING COUNT(b.id) > 2;