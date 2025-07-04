# Airbnb Database Schema

This schema defines the core tables for an Airbnb-like platform:

- **Guests:** Stores user information who book properties.
- **Properties:** Details about the listings available for rent.
- **Amenities:** Possible amenities a property can have.
- **Amenities_Properties:** Many-to-many relationship between properties and amenities.
- **Bookings:** Records reservations made by guests for properties.
- **Payments:** Tracks payment details linked to bookings.

**Constraints:**

- Primary keys uniquely identify records.
- Foreign keys ensure referential integrity between tables.
- Check constraints validate logical data, e.g., `check_out` must be after `check_in`.
- Indexes are added on frequently searched columns for faster queries.

---

Feel free to customize data types and constraints based on your specific project requirements.
