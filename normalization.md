# Database Normalization to Third Normal Form (3NF)

## Objective
To ensure the Airbnb database schema is free from redundancy and anomalies by applying normalization rules up to the Third Normal Form (3NF).

---

## Normalization Process

### 1. First Normal Form (1NF)
- Ensure each table contains only atomic values (indivisible).
- Remove repeating groups or arrays within columns.
- Example: If a guest has multiple phone numbers stored in one column, separate them into distinct rows or a related table.

### 2. Second Normal Form (2NF)
- Achieve 1NF.
- Remove partial dependencies, i.e., all non-key attributes must depend on the whole primary key.
- Example: If a table uses a composite key `(booking_id, property_id)`, attributes related only to `property_id` should be moved to a `Property` table.

### 3. Third Normal Form (3NF)
- Achieve 2NF.
- Remove transitive dependencies: non-key attributes must depend only on the primary key, not on other non-key attributes.
- Example: If `guest_address` depends on `guest_id`, it should be stored in the `Guest` table, not duplicated in `Booking`.

---

## Application to Airbnb Database Schema

| Table       | Description                             | Notes                                      |
|-------------|-------------------------------------|--------------------------------------------|
| Guests      | Stores guest details (name, contact) | No booking or payment info here             |
| Properties  | Stores property details               | Linked to amenities via join tables         |
| Bookings    | Stores reservation info linking guests and properties | Contains booking dates, status, etc.       |
| Amenities   | Stores amenities list                 | Linked to Properties through a join table   |
| Payments    | Stores payment transactions           | Linked to bookings only                      |

By structuring the database in this way:

- We eliminate data duplication.
- Update anomalies are prevented (e.g., changing guest address in one place only).
- Data integrity is improved.
- Queries are simplified and more efficient.

---

## Conclusion

The database schema has been reviewed and normalized up to 3NF. This ensures:

- Atomicity of data.
- No partial or transitive dependencies.
- Reduced redundancy and easier maintenance.

---

## References

- [Oracle Database Normalization Concepts](https://docs.oracle.com/cd/B28359_01/server.111/b28318/normalization.htm)
- [Third Normal Form (3NF) - GeeksforGeeks](https://www.geeksforgeeks.org/third-normal-form-3nf-in-dbms/)
- [Database Normalization - Microsoft Docs](https://learn.microsoft.com/en-us/office/troubleshoot/access/database-normalization)
