-- Indexes for User Table
CREATE INDEX idx_users_email ON users(email);

-- Indexes for Booking Table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Indexes for Property Table
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price_per_night ON properties(price_per_night);

-- 📊 Performance Measurement with EXPLAIN ANALYZE

-- Measure performance of user lookup by email
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'test@example.com';

-- Measure performance of filtering bookings by user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

-- Measure performance of property search by location and price
EXPLAIN ANALYZE
SELECT * FROM properties 
WHERE location = 'Marrakech' AND price_per_night BETWEEN 50 AND 150;
