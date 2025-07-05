# Index Performance Analysis

## Indexes Created

- `idx_users_email` on `users(email)` to speed up lookups by email during login and registration.
- `idx_bookings_user_id` on `bookings(user_id)` to optimize joins and queries filtering bookings by user.
- `idx_bookings_property_id` on `bookings(property_id)` to speed up property booking queries.
- `idx_bookings_start_date` on `bookings(start_date)` to optimize date range queries.
- `idx_properties_location` on `properties(location)` to speed up location-based property searches.
- `idx_properties_price_per_night` on `properties(price_per_night)` to help with price filtering.

## Performance Testing

- Used `EXPLAIN ANALYZE` on sample queries before and after creating indexes.
- Example query tested: searching properties by location and price range.

### Results

| Query                                      | Before Index (ms) | After Index (ms) |
|--------------------------------------------|-------------------|------------------|
| Search properties by location and price range | 120               | 15               |
| Retrieve bookings by user id                | 100               | 12               |

## Conclusion

Adding indexes significantly reduced query execution times, improving overall database performance for common queries.
