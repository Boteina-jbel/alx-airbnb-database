-- 🚧 Initial Query: Join Bookings with Users, Properties, and Payments
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    u.email,
    p.title AS property_title,
    p.location,
    pay.amount,
    pay.status
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pay ON b.id = pay.booking_id;

-- ✅ Optimized Query: Only fetch needed columns with indexed joins
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name,
    p.title,
    pay.amount
FROM 
    bookings b
INNER JOIN 
    users u ON b.user_id = u.id
INNER JOIN 
    properties p ON b.property_id = p.id
LEFT JOIN 
    payments pay ON b.id = pay.booking_id;
