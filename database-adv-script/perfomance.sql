-- 🚧 Initial Query: Join Bookings with Users, Properties, and Payments (with WHERE and AND)
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
    payments pay ON b.id = pay.booking_id
WHERE 
    b.start_date >= '2024-01-01'
    AND b.end_date <= '2024-12-31';

-- ✅ Optimized Query: Fewer columns, improved JOIN types, and index-aware
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
    payments pay ON b.id = pay.booking_id
WHERE 
    b.start_date >= '2024-01-01'
    AND b.end_date <= '2024-12-31';
